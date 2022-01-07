
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int Size; int Buf; } ;
struct TYPE_8__ {int AuthType; int SecurePrivateKeyName; int SecurePublicCertName; int * ClientK; int * ClientX; int PlainPassword; int HashedPassword; int Username; } ;
typedef int FOLDER ;
typedef TYPE_1__ CLIENT_AUTH ;
typedef TYPE_2__ BUF ;







 int CfgAddByte (int *,char*,int ,int ) ;
 int CfgAddInt (int *,char*,int) ;
 int CfgAddStr (int *,char*,int ) ;
 TYPE_2__* EncryptPassword (int ) ;
 int FreeBuf (TYPE_2__*) ;
 TYPE_2__* KToBuf (int *,int,int *) ;
 int SHA1_SIZE ;
 TYPE_2__* XToBuf (int *,int) ;

void CiWriteClientAuth(FOLDER *f, CLIENT_AUTH *a)
{
 BUF *b;

 if (f == ((void*)0) || a == ((void*)0))
 {
  return;
 }

 CfgAddInt(f, "AuthType", a->AuthType);
 CfgAddStr(f, "Username", a->Username);

 switch (a->AuthType)
 {
 case 132:
  break;

 case 130:
  CfgAddByte(f, "HashedPassword", a->HashedPassword, SHA1_SIZE);
  break;

 case 129:
  b = EncryptPassword(a->PlainPassword);
  CfgAddByte(f, "EncryptedPassword", b->Buf, b->Size);
  FreeBuf(b);
  break;

 case 131:
  if (a->ClientK != ((void*)0) && a->ClientX != ((void*)0))
  {
   b = XToBuf(a->ClientX, 0);
   CfgAddByte(f, "ClientCert", b->Buf, b->Size);
   FreeBuf(b);

   b = KToBuf(a->ClientK, 0, ((void*)0));
   CfgAddByte(f, "ClientKey", b->Buf, b->Size);
   FreeBuf(b);
  }
  break;

 case 128:
  CfgAddStr(f, "SecurePublicCertName", a->SecurePublicCertName);
  CfgAddStr(f, "SecurePrivateKeyName", a->SecurePrivateKeyName);
  break;
 }
}
