
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int AuthType; int SecurePrivateKeyName; int SecurePublicCertName; int ClientK; int ClientX; int PlainPassword; int HashedPassword; int Username; } ;
typedef int PACK ;
typedef TYPE_1__ CLIENT_AUTH ;
typedef int BUF ;







 int FreeBuf (int *) ;
 int * KToBuf (int ,int,int *) ;
 int PackAddBuf (int *,char*,int *) ;
 int PackAddData (int *,char*,int ,int ) ;
 int PackAddInt (int *,char*,int) ;
 int PackAddStr (int *,char*,int ) ;
 int SHA1_SIZE ;
 int * XToBuf (int ,int) ;

void OutRpcClientAuth(PACK *p, CLIENT_AUTH *c)
{
 BUF *b;

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "AuthType", c->AuthType);
 PackAddStr(p, "Username", c->Username);

 switch (c->AuthType)
 {
 case 132:
  break;

 case 130:
  PackAddData(p, "HashedPassword", c->HashedPassword, SHA1_SIZE);
  break;

 case 129:
  PackAddStr(p, "PlainPassword", c->PlainPassword);
  break;

 case 131:
  b = XToBuf(c->ClientX, 0);
  if (b != ((void*)0))
  {
   PackAddBuf(p, "ClientX", b);
   FreeBuf(b);
  }
  b = KToBuf(c->ClientK, 0, ((void*)0));
  if (b != ((void*)0))
  {
   PackAddBuf(p, "ClientK", b);
   FreeBuf(b);
  }
  break;

 case 128:
  PackAddStr(p, "SecurePublicCertName", c->SecurePublicCertName);
  PackAddStr(p, "SecurePrivateKeyName", c->SecurePrivateKeyName);
  break;
 }
}
