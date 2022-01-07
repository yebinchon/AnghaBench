
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int AuthType; int SecurePrivateKeyName; int SecurePublicCertName; int ClientK; int ClientX; int PlainPassword; int HashedPassword; int Username; } ;
typedef int PACK ;
typedef TYPE_1__ CLIENT_AUTH ;
typedef int BUF ;


 int BufToK (int *,int,int,int *) ;
 int BufToX (int *,int) ;





 int FreeBuf (int *) ;
 int * PackGetBuf (int *,char*) ;
 int PackGetData (int *,char*,int ) ;
 int PackGetDataSize (int *,char*) ;
 int PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int SHA1_SIZE ;
 int Zero (TYPE_1__*,int) ;

void InRpcClientAuth(CLIENT_AUTH *c, PACK *p)
{
 BUF *b;

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(c, sizeof(CLIENT_AUTH));
 c->AuthType = PackGetInt(p, "AuthType");
 PackGetStr(p, "Username", c->Username, sizeof(c->Username));

 switch (c->AuthType)
 {
 case 132:
  break;

 case 130:
  if (PackGetDataSize(p, "HashedPassword") == SHA1_SIZE)
  {
   PackGetData(p, "HashedPassword", c->HashedPassword);
  }
  break;

 case 129:
  PackGetStr(p, "PlainPassword", c->PlainPassword, sizeof(c->PlainPassword));
  break;

 case 131:
  b = PackGetBuf(p, "ClientX");
  if (b != ((void*)0))
  {
   c->ClientX = BufToX(b, 0);
   FreeBuf(b);
  }
  b = PackGetBuf(p, "ClientK");
  if (b != ((void*)0))
  {
   c->ClientK = BufToK(b, 1, 0, ((void*)0));
   FreeBuf(b);
  }
  break;

 case 128:
  PackGetStr(p, "SecurePublicCertName", c->SecurePublicCertName, sizeof(c->SecurePublicCertName));
  PackGetStr(p, "SecurePrivateKeyName", c->SecurePrivateKeyName, sizeof(c->SecurePrivateKeyName));
  break;
 }
}
