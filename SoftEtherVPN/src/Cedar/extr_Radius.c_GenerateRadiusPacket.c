
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int zero16 ;
typedef int rand16 ;
typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_16__ {scalar_t__ Current; scalar_t__ Buf; int Size; } ;
struct TYPE_15__ {scalar_t__ Type; int DataSize; scalar_t__* Data; scalar_t__ VendorCode; int VendorId; } ;
struct TYPE_14__ {scalar_t__* Authenticator; scalar_t__ Code; scalar_t__ PacketId; int AvpList; } ;
typedef TYPE_1__ RADIUS_PACKET ;
typedef TYPE_2__ RADIUS_AVP ;
typedef TYPE_3__ BUF ;


 int Add (int ,TYPE_2__*) ;
 int Copy (scalar_t__*,scalar_t__*,int) ;
 int HMacMd5 (scalar_t__*,char*,int ,scalar_t__,int ) ;
 scalar_t__ IsZero (scalar_t__*,int) ;
 scalar_t__ LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 TYPE_3__* NewBuf () ;
 TYPE_2__* NewRadiusAvp (scalar_t__,int ,int ,scalar_t__*,int) ;
 scalar_t__ RADIUS_ATTRIBUTE_EAP_AUTHENTICATOR ;
 scalar_t__ RADIUS_ATTRIBUTE_EAP_MESSAGE ;
 scalar_t__ RADIUS_ATTRIBUTE_VENDOR_SPECIFIC ;
 int Rand (scalar_t__*,int) ;
 int SeekBufToBegin (TYPE_3__*) ;
 int StrLen (char*) ;
 int WRITE_USHORT (scalar_t__*,int ) ;
 int WriteBuf (TYPE_3__*,scalar_t__*,int) ;
 int WriteBufChar (TYPE_3__*,scalar_t__) ;
 int WriteBufInt (TYPE_3__*,int ) ;
 int WriteBufShort (TYPE_3__*,int ) ;
 int Zero (scalar_t__*,int) ;

BUF *GenerateRadiusPacket(RADIUS_PACKET *p, char *shared_secret)
{
 BUF *b;
 UINT i;
 UCHAR zero16[16];
 UINT len_pos = 0;
 UINT eap_auth_pos = 0;
 bool exist_eap_msg = 0;
 bool exist_eap_auth = 0;
 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(zero16, sizeof(zero16));


 for (i = 0;i < LIST_NUM(p->AvpList);i++)
 {
  RADIUS_AVP *a = (RADIUS_AVP *)LIST_DATA(p->AvpList, i);

  if (a->Type == RADIUS_ATTRIBUTE_EAP_MESSAGE)
  {
   exist_eap_msg = 1;
  }
  if (a->Type == RADIUS_ATTRIBUTE_EAP_AUTHENTICATOR)
  {
   exist_eap_auth = 1;
  }
 }

 if (exist_eap_msg && exist_eap_auth == 0)
 {
  RADIUS_AVP *a = NewRadiusAvp(RADIUS_ATTRIBUTE_EAP_AUTHENTICATOR, 0, 0, zero16, sizeof(zero16));

  Add(p->AvpList, a);
 }

 if (IsZero(p->Authenticator, 16))
 {
  UCHAR rand16[16];

  Rand(rand16, sizeof(rand16));
  Copy(p->Authenticator, rand16, 16);
 }

 b = NewBuf();

 WriteBufChar(b, p->Code);
 WriteBufChar(b, p->PacketId);
 len_pos = b->Current;
 WriteBufShort(b, 0);
 WriteBuf(b, p->Authenticator, 16);

 for (i = 0;i < LIST_NUM(p->AvpList);i++)
 {
  RADIUS_AVP *a = (RADIUS_AVP *)LIST_DATA(p->AvpList, i);

  WriteBufChar(b, a->Type);

  if (a->Type != RADIUS_ATTRIBUTE_VENDOR_SPECIFIC)
  {
   WriteBufChar(b, (UCHAR)((UINT)a->DataSize + 2));

   if (a->Type == RADIUS_ATTRIBUTE_EAP_AUTHENTICATOR)
   {
    eap_auth_pos = b->Current;

    if (a->DataSize == 16)
    {
     Zero(a->Data, sizeof(a->Data));
    }
   }

   WriteBuf(b, a->Data, a->DataSize);
  }
  else
  {
   WriteBufChar(b, (UCHAR)((UINT)a->DataSize + 8));
   WriteBufInt(b, a->VendorId);
   WriteBufChar(b, a->VendorCode);
   WriteBufChar(b, (UCHAR)((UINT)a->DataSize + 2));
   WriteBuf(b, a->Data, a->DataSize);
  }
 }

 WRITE_USHORT(((UCHAR *)b->Buf) + len_pos, b->Size);

 if (eap_auth_pos != 0)
 {
  UCHAR eap_auth[16];

  HMacMd5(eap_auth, shared_secret, StrLen(shared_secret), b->Buf, b->Size);

  Copy(((UCHAR *)b->Buf) + eap_auth_pos, eap_auth, 16);
 }

 SeekBufToBegin(b);

 return b;
}
