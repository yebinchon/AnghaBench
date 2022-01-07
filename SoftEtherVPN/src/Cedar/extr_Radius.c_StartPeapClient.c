
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int LastRecvEapId; int NextRadiusPacketId; int Username; int * SslPipe; } ;
struct TYPE_18__ {scalar_t__ Code; scalar_t__ Type; scalar_t__* Data; void* Len; int Id; } ;
struct TYPE_17__ {int TlsFlags; } ;
struct TYPE_16__ {scalar_t__ Parse_EapMessage_DataSize; scalar_t__ Parse_StateSize; TYPE_3__* Parse_EapMessage; int AvpList; TYPE_3__* Parse_State; } ;
typedef TYPE_1__ RADIUS_PACKET ;
typedef TYPE_2__ EAP_PEAP ;
typedef TYPE_3__ EAP_MESSAGE ;
typedef TYPE_4__ EAP_CLIENT ;


 int Add (int ,int ) ;
 int Copy (scalar_t__*,int ,int) ;
 scalar_t__ EAP_CODE_REQUEST ;
 void* EAP_CODE_RESPONSE ;
 scalar_t__ EAP_TYPE_IDENTITY ;
 scalar_t__ EAP_TYPE_LEGACY_NAK ;
 scalar_t__ EAP_TYPE_PEAP ;
 TYPE_1__* EapSendPacketAndRecvResponse (TYPE_4__*,TYPE_1__*) ;
 int EapSetRadiusGeneralAttributes (TYPE_1__*,TYPE_4__*) ;
 void* Endian16 (int) ;
 int Free (TYPE_3__*) ;
 int FreeRadiusPacket (TYPE_1__*) ;
 int NewRadiusAvp (int ,int ,int ,TYPE_3__*,int) ;
 TYPE_1__* NewRadiusPacket (int ,int ) ;
 int RADIUS_ATTRIBUTE_EAP_MESSAGE ;
 int RADIUS_ATTRIBUTE_STATE ;
 int RADIUS_CODE_ACCESS_REQUEST ;
 int StrLen (int ) ;
 TYPE_3__* ZeroMalloc (int) ;

bool StartPeapClient(EAP_CLIENT *e)
{
 bool ret = 0;
 RADIUS_PACKET *request1 = ((void*)0);
 RADIUS_PACKET *response1 = ((void*)0);
 RADIUS_PACKET *request2 = ((void*)0);
 RADIUS_PACKET *response2 = ((void*)0);
 EAP_MESSAGE *eap1 = ((void*)0);
 EAP_MESSAGE *eap2 = ((void*)0);
 if (e == ((void*)0))
 {
  return 0;
 }
 if (e->SslPipe != ((void*)0))
 {
  return 0;
 }

 request1 = NewRadiusPacket(RADIUS_CODE_ACCESS_REQUEST, e->NextRadiusPacketId++);
 EapSetRadiusGeneralAttributes(request1, e);

 eap1 = ZeroMalloc(sizeof(EAP_MESSAGE));
 eap1->Code = EAP_CODE_RESPONSE;
 eap1->Id = e->LastRecvEapId;
 eap1->Len = Endian16(StrLen(e->Username) + 5);
 eap1->Type = EAP_TYPE_IDENTITY;
 Copy(eap1->Data, e->Username, StrLen(e->Username));
 Add(request1->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_EAP_MESSAGE, 0, 0, eap1, StrLen(e->Username) + 5));

 response1 = EapSendPacketAndRecvResponse(e, request1);

 if (response1 != ((void*)0))
 {
  if (response1->Parse_EapMessage_DataSize != 0 && response1->Parse_EapMessage != ((void*)0))
  {
   EAP_MESSAGE *eap = response1->Parse_EapMessage;
   if (eap->Code == EAP_CODE_REQUEST)
   {
    if (eap->Type != EAP_TYPE_PEAP)
    {

     request2 = NewRadiusPacket(RADIUS_CODE_ACCESS_REQUEST, e->NextRadiusPacketId++);
     EapSetRadiusGeneralAttributes(request2, e);

     if (response1->Parse_StateSize != 0)
     {
      Add(request2->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_STATE, 0, 0,
       response1->Parse_State, response1->Parse_StateSize));
     }

     eap2 = ZeroMalloc(sizeof(EAP_MESSAGE));
     eap2->Code = EAP_CODE_RESPONSE;
     eap2->Id = e->LastRecvEapId;
     eap2->Len = Endian16(6);
     eap2->Type = EAP_TYPE_LEGACY_NAK;
     eap2->Data[0] = EAP_TYPE_PEAP;

     Add(request2->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_EAP_MESSAGE, 0, 0, eap2, 6));

     response2 = EapSendPacketAndRecvResponse(e, request2);

     if (response2 != ((void*)0) && response2->Parse_EapMessage_DataSize != 0 && response2->Parse_EapMessage != ((void*)0))
     {
      eap = response2->Parse_EapMessage;

      if (eap->Code == EAP_CODE_REQUEST && eap->Type == EAP_TYPE_PEAP)
      {
       goto LABEL_PARSE_PEAP;
      }
     }
    }
    else
    {
     EAP_PEAP *peap;
LABEL_PARSE_PEAP:
     peap = (EAP_PEAP *)eap;

     if (peap->TlsFlags == 0x20)
     {
      ret = 1;
     }
    }
   }
  }
 }

 FreeRadiusPacket(request1);
 FreeRadiusPacket(request2);
 FreeRadiusPacket(response1);
 FreeRadiusPacket(response2);
 Free(eap1);
 Free(eap2);

 return ret;
}
