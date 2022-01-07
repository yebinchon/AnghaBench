
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;


typedef scalar_t__ USHORT ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_22__ {scalar_t__ Protocol; int IsControl; TYPE_1__* Lcp; } ;
struct TYPE_21__ {TYPE_17__* TubeRecv; scalar_t__ ClientLCPOptionDetermined; TYPE_3__* LastStoredPacket; } ;
struct TYPE_20__ {scalar_t__ Id; scalar_t__ Code; } ;
struct TYPE_19__ {int Event; } ;
typedef TYPE_2__ PPP_SESSION ;
typedef TYPE_3__ PPP_PACKET ;


 int Debug (char*,...) ;
 int FreePPPPacket (TYPE_3__*) ;
 int IsTubeConnected (TYPE_17__*) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int PPPLog (TYPE_2__*,char*) ;
 TYPE_3__* PPPProcessRequestPacket (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* PPPRecvPacketWithLowLayerProcessing (TYPE_2__*,int) ;
 int PPPSendPacket (TYPE_2__*,TYPE_3__*) ;
 int PPPStoreLastPacket (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ PPP_CHAP_CODE_FAILURE ;
 scalar_t__ PPP_CODE_IS_REQUEST (scalar_t__,scalar_t__) ;
 scalar_t__ PPP_CODE_IS_RESPONSE (scalar_t__,scalar_t__) ;
 scalar_t__ PPP_IS_SUPPORTED_PROTOCOL (scalar_t__) ;
 scalar_t__ PPP_PACKET_RECV_TIMEOUT ;
 scalar_t__ PPP_PACKET_RESEND_INTERVAL ;
 scalar_t__ PPP_PAP_CODE_ACK ;
 scalar_t__ PPP_PAP_CODE_IS_RESPONSE (scalar_t__) ;
 scalar_t__ PPP_PROTOCOL_CHAP ;
 scalar_t__ PPP_PROTOCOL_PAP ;
 int SleepThread (int) ;
 scalar_t__ Tick64 () ;
 int Wait (int ,scalar_t__) ;

PPP_PACKET *PPPRecvResponsePacket(PPP_SESSION *p, PPP_PACKET *req, USHORT expected_protocol, USHORT *received_protocol, bool finish_when_all_lcp_acked,
          bool return_mschapv2_response_with_no_processing)
{
 UINT64 giveup_tick = Tick64() + (UINT64)PPP_PACKET_RECV_TIMEOUT;
 UINT64 next_resend = Tick64() + (UINT64)PPP_PACKET_RESEND_INTERVAL;
 PPP_PACKET *ret = ((void*)0);
 USHORT tmp_us = 0;

 if (p == ((void*)0) || req != ((void*)0) && req->Lcp == ((void*)0))
 {
  return ((void*)0);
 }

 if (received_protocol == ((void*)0))
 {
  received_protocol = &tmp_us;
 }

 if (req != ((void*)0))
 {
  expected_protocol = req->Protocol;
 }

 *received_protocol = 0;


 while (1)
 {
  UINT64 now = Tick64();
  UINT interval;

  if (IsTubeConnected(p->TubeRecv) == 0)
  {
   return ((void*)0);
  }

  while (1)
  {
   PPP_PACKET *pp;
   PPP_PACKET *response;

   if (p->LastStoredPacket != ((void*)0))
   {
    pp = p->LastStoredPacket;
    p->LastStoredPacket = ((void*)0);
   }
   else
   {
    pp = PPPRecvPacketWithLowLayerProcessing(p, 1);
   }

   if (pp == ((void*)0))
   {
    break;
   }

   if (req != ((void*)0))
   {

    if (pp->IsControl && pp->Protocol == req->Protocol && pp->Lcp->Id == req->Lcp->Id &&
     PPP_CODE_IS_RESPONSE(pp->Protocol, pp->Lcp->Code))
    {
     return pp;
    }

    if (return_mschapv2_response_with_no_processing)
    {

     if (pp->IsControl && pp->Protocol == req->Protocol && pp->Lcp->Id == req->Lcp->Id &&
      pp->Protocol == PPP_PROTOCOL_CHAP && PPP_PAP_CODE_IS_RESPONSE(pp->Lcp->Code))
     {
      return pp;
     }
    }
   }


   if ((pp->IsControl && pp->Protocol != expected_protocol) || pp->IsControl == 0)
   {
    if (PPP_IS_SUPPORTED_PROTOCOL(pp->Protocol))
    {


     PPPStoreLastPacket(p, pp);

     *received_protocol = pp->Protocol;
     return ((void*)0);
    }
    else
    {

     Debug("Unsupported Protocol: 0x%x\n", pp->Protocol);
     FreePPPPacket(pp);

     return ((void*)0);
    }
   }

   if (pp->IsControl && PPP_CODE_IS_REQUEST(pp->Protocol, pp->Lcp->Code))
   {

    UINT64 currentresend = next_resend - now;


    response = PPPProcessRequestPacket(p, pp);


    next_resend = Tick64() + currentresend;

    FreePPPPacket(pp);

    if (response == ((void*)0))
    {
     return ((void*)0);
    }
    else
    {
     bool is_pap_and_disconnect_now = 0;
     bool is_chap_and_disconnect_now = 0;

     if (PPPSendPacket(p, response) == 0)
     {
      FreePPPPacket(response);
      return ((void*)0);
     }

     if (response->Protocol == PPP_PROTOCOL_PAP && response->IsControl &&
      response->Lcp->Code != PPP_PAP_CODE_ACK)
     {
      is_pap_and_disconnect_now = 1;
     }

     if (response->Protocol == PPP_PROTOCOL_CHAP && response->IsControl &&
      response->Lcp->Code == PPP_CHAP_CODE_FAILURE)
     {
      is_chap_and_disconnect_now = 1;
     }

     FreePPPPacket(response);

     if (is_pap_and_disconnect_now)
     {

      Debug("Disconnecting because PAP failed.\n");
      SleepThread(300);
      return ((void*)0);
     }

     if (is_chap_and_disconnect_now)
     {

      Debug("Disconnecting because CHAP failed.\n");
      SleepThread(300);
      return ((void*)0);
     }
    }
   }
   else
   {

    FreePPPPacket(pp);
   }
  }


  if (req != ((void*)0))
  {
   if (now >= next_resend)
   {
    next_resend = now + PPP_PACKET_RESEND_INTERVAL;

    if (PPPSendPacket(p, req) == 0)
    {
     return ((void*)0);
    }
   }
  }

  if (req == ((void*)0))
  {
   giveup_tick = now + (UINT64)PPP_PACKET_RECV_TIMEOUT;
  }


  if (now >= giveup_tick)
  {
   PPPLog(p, "LP_CONTROL_TIMEOUT");
   return ((void*)0);
  }


  if (req != ((void*)0))
  {
   interval = MIN((UINT)(giveup_tick - now), (UINT)(next_resend - now));
  }
  else
  {
   interval = (UINT)(giveup_tick - now);
  }

  if (finish_when_all_lcp_acked && p->ClientLCPOptionDetermined)
  {
   return ((void*)0);
  }

  Wait(p->TubeRecv->Event, interval);
 }
}
