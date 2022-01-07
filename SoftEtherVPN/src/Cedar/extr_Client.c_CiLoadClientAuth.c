
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int AuthType; int SecurePrivateKeyName; int SecurePublicCertName; int ClientK; int ClientX; int PlainPassword; int HashedPassword; int Username; } ;
typedef int FOLDER ;
typedef TYPE_1__ CLIENT_AUTH ;
typedef int BUF ;


 int BufToK (int *,int,int,int *) ;
 int BufToX (int *,int) ;





 int * CfgGetBuf (int *,char*) ;
 int CfgGetByte (int *,char*,int ,int ) ;
 int CfgGetInt (int *,char*) ;
 int CfgGetStr (int *,char*,int ,int) ;
 char* DecryptPassword (int *) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int SHA1_SIZE ;
 int StrCpy (int ,int,char*) ;
 TYPE_1__* ZeroMalloc (int) ;

CLIENT_AUTH *CiLoadClientAuth(FOLDER *f)
{
 CLIENT_AUTH *a;
 char *s;
 BUF *b;

 if (f == ((void*)0))
 {
  return ((void*)0);
 }

 a = ZeroMalloc(sizeof(CLIENT_AUTH));

 a->AuthType = CfgGetInt(f, "AuthType");
 CfgGetStr(f, "Username", a->Username, sizeof(a->Username));

 switch (a->AuthType)
 {
 case 132:
  break;

 case 130:
  CfgGetByte(f, "HashedPassword", a->HashedPassword, SHA1_SIZE);
  break;

 case 129:
  b = CfgGetBuf(f, "EncryptedPassword");
  if (b != ((void*)0))
  {
   s = DecryptPassword(b);
   StrCpy(a->PlainPassword, sizeof(a->PlainPassword), s);
   Free(s);
   FreeBuf(b);
  }
  break;

 case 131:
  b = CfgGetBuf(f, "ClientCert");
  if (b != ((void*)0))
  {
   a->ClientX = BufToX(b, 0);
  }
  FreeBuf(b);
  b = CfgGetBuf(f, "ClientKey");
  if (b != ((void*)0))
  {
   a->ClientK = BufToK(b, 1, 0, ((void*)0));
  }
  FreeBuf(b);
  break;

 case 128:
  CfgGetStr(f, "SecurePublicCertName", a->SecurePublicCertName, sizeof(a->SecurePublicCertName));
  CfgGetStr(f, "SecurePrivateKeyName", a->SecurePrivateKeyName, sizeof(a->SecurePrivateKeyName));
  break;
 }

 return a;
}
