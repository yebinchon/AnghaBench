
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
struct TYPE_16__ {int Code; scalar_t__ Id; } ;
struct TYPE_15__ {int IsControl; TYPE_3__* Lcp; scalar_t__ Protocol; } ;
struct TYPE_14__ {int NextId; } ;
typedef TYPE_1__ PPP_SESSION ;
typedef TYPE_2__ PPP_PACKET ;
typedef TYPE_3__ PPP_LCP ;


 int Free (TYPE_2__*) ;
 int FreePPPPacket (TYPE_2__*) ;
 TYPE_2__* PPPRecvResponsePacket (TYPE_1__*,TYPE_2__*,int ,int *,int,int) ;
 int PPPSendPacket (TYPE_1__*,TYPE_2__*) ;
 int PPP_LCP_CODE_IS_NEGATIVE (int ) ;
 scalar_t__ PPP_PROTOCOL_IPCP ;
 scalar_t__ PPP_PROTOCOL_LCP ;
 TYPE_2__* ZeroMalloc (int) ;

bool PPPSendRequest(PPP_SESSION *p, USHORT protocol, PPP_LCP *c)
{
 PPP_PACKET *pp;
 PPP_PACKET *pp2;
 bool ret = 0;

 if (p == ((void*)0) || c == ((void*)0))
 {
  return 0;
 }

 pp = ZeroMalloc(sizeof(PPP_PACKET));
 pp->Protocol = protocol;
 pp->IsControl = 1;
 pp->Lcp = c;
 pp->Lcp->Id = p->NextId++;


 if (PPPSendPacket(p, pp) == 0)
 {
  goto LABEL_ERROR;
 }


 pp2 = PPPRecvResponsePacket(p, pp, 0, ((void*)0), 0, 0);

 if (pp2 != ((void*)0))
 {
  if (protocol == PPP_PROTOCOL_LCP || protocol == PPP_PROTOCOL_IPCP)
  {
   if (!PPP_LCP_CODE_IS_NEGATIVE(pp2->Lcp->Code))
   {

    ret = 1;
   }
  }
 }

 FreePPPPacket(pp2);
 Free(pp);

 return ret;

LABEL_ERROR:
 Free(pp);
 return 0;
}
