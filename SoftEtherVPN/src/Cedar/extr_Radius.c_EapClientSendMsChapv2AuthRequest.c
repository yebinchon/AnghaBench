
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ MsChapV2Challenge; int NextEapId; int NextRadiusPacketId; TYPE_3__* Username; } ;
struct TYPE_22__ {scalar_t__ Code; scalar_t__ Type; scalar_t__* Data; void* Len; scalar_t__ Id; } ;
struct TYPE_21__ {int Chap_ValueSize; } ;
struct TYPE_20__ {scalar_t__ Chap_Opcode; } ;
struct TYPE_19__ {scalar_t__ Parse_EapMessage_DataSize; scalar_t__ Parse_StateSize; TYPE_4__* Parse_EapMessage; int AvpList; TYPE_4__* Parse_State; } ;
typedef TYPE_1__ RADIUS_PACKET ;
typedef TYPE_2__ EAP_MSCHAPV2_GENERAL ;
typedef TYPE_3__ EAP_MSCHAPV2_CHALLENGE ;
typedef TYPE_4__ EAP_MESSAGE ;
typedef TYPE_5__ EAP_CLIENT ;


 int Add (int ,int ) ;
 int Copy (scalar_t__*,TYPE_3__*,int) ;
 scalar_t__ EAP_CODE_REQUEST ;
 void* EAP_CODE_RESPONSE ;
 scalar_t__ EAP_MSCHAPV2_OP_CHALLENGE ;
 scalar_t__ EAP_TYPE_IDENTITY ;
 scalar_t__ EAP_TYPE_LEGACY_NAK ;
 scalar_t__ EAP_TYPE_MS_AUTH ;
 TYPE_1__* EapSendPacketAndRecvResponse (TYPE_5__*,TYPE_1__*) ;
 int EapSetRadiusGeneralAttributes (TYPE_1__*,TYPE_5__*) ;
 void* Endian16 (int) ;
 int Free (TYPE_4__*) ;
 int FreeRadiusPacket (TYPE_1__*) ;
 int NewRadiusAvp (int ,int ,int ,TYPE_4__*,int) ;
 TYPE_1__* NewRadiusPacket (int ,int ) ;
 int RADIUS_ATTRIBUTE_EAP_MESSAGE ;
 int RADIUS_ATTRIBUTE_STATE ;
 int RADIUS_CODE_ACCESS_REQUEST ;
 int StrLen (TYPE_3__*) ;
 TYPE_4__* ZeroMalloc (int) ;

bool EapClientSendMsChapv2AuthRequest(EAP_CLIENT *e)
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

 request1 = NewRadiusPacket(RADIUS_CODE_ACCESS_REQUEST, e->NextRadiusPacketId++);
 EapSetRadiusGeneralAttributes(request1, e);

 eap1 = ZeroMalloc(sizeof(EAP_MESSAGE));
 eap1->Code = EAP_CODE_RESPONSE;
 eap1->Id = e->NextEapId++;
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
    if (eap->Type != EAP_TYPE_MS_AUTH)
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
     eap2->Id = e->NextEapId++;
     eap2->Len = Endian16(6);
     eap2->Type = EAP_TYPE_LEGACY_NAK;
     eap2->Data[0] = EAP_TYPE_MS_AUTH;

     Add(request2->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_EAP_MESSAGE, 0, 0, eap2, 6));

     response2 = EapSendPacketAndRecvResponse(e, request2);

     if (response2 != ((void*)0) && response2->Parse_EapMessage_DataSize != 0 && response2->Parse_EapMessage != ((void*)0))
     {
      eap = response2->Parse_EapMessage;

      if (eap->Code == EAP_CODE_REQUEST && eap->Type == EAP_TYPE_MS_AUTH)
      {
       goto LABEL_PARSE_EAP;
      }
     }
    }
    else
    {
     EAP_MSCHAPV2_GENERAL *ms_g;
LABEL_PARSE_EAP:
     ms_g = (EAP_MSCHAPV2_GENERAL *)eap;

     if (ms_g->Chap_Opcode == EAP_MSCHAPV2_OP_CHALLENGE)
     {
      EAP_MSCHAPV2_CHALLENGE *ms_c = (EAP_MSCHAPV2_CHALLENGE *)eap;
      if (ms_c->Chap_ValueSize == 16)
      {
       Copy(&e->MsChapV2Challenge, ms_c, sizeof(EAP_MSCHAPV2_CHALLENGE));

       ret = 1;
      }
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
