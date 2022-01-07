
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X ;
typedef int UINT ;
struct TYPE_4__ {void* Buf; int Size; } ;
typedef int PACK ;
typedef TYPE_1__ BUF ;


 int CLIENT_AUTHTYPE_CERT ;
 int FreeBuf (TYPE_1__*) ;
 int * NewPack () ;
 int PackAddData (int *,char*,void*,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,char*) ;
 TYPE_1__* XToBuf (int *,int) ;

PACK *PackLoginWithCert(char *hubname, char *username, X *x, void *sign, UINT sign_size)
{
 PACK *p;
 BUF *b;

 if (hubname == ((void*)0) || username == ((void*)0))
 {
  return ((void*)0);
 }

 p = NewPack();
 PackAddStr(p, "method", "login");
 PackAddStr(p, "hubname", hubname);
 PackAddStr(p, "username", username);
 PackAddInt(p, "authtype", CLIENT_AUTHTYPE_CERT);


 b = XToBuf(x, 0);
 PackAddData(p, "cert", b->Buf, b->Size);
 FreeBuf(b);


 PackAddData(p, "sign", sign, sign_size);

 return p;
}
