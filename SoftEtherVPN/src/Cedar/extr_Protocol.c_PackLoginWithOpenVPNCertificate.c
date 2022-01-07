
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cn_username ;
struct TYPE_6__ {TYPE_1__* subject_name; } ;
typedef TYPE_2__ X ;
struct TYPE_5__ {int CommonName; } ;
typedef int PACK ;
typedef int BUF ;


 int AUTHTYPE_OPENVPN_CERT ;
 int FreeBuf (int *) ;
 int FreePack (int *) ;
 scalar_t__ IsEmptyStr (char*) ;
 int * NewPack () ;
 int PackAddBuf (int *,char*,int *) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,char*) ;
 int UniToStr (char*,int,int ) ;
 int * XToBuf (TYPE_2__*,int) ;

PACK *PackLoginWithOpenVPNCertificate(char *hubname, char *username, X *x)
{
 PACK *p;
 char cn_username[128];
 BUF *cert_buf = ((void*)0);

 if (hubname == ((void*)0) || username == ((void*)0) || x == ((void*)0))
 {
  return ((void*)0);
 }

 p = NewPack();
 PackAddStr(p, "method", "login");
 PackAddStr(p, "hubname", hubname);

 if (IsEmptyStr(username))
 {
  if (x->subject_name == ((void*)0))
  {
   FreePack(p);
   return ((void*)0);
  }
  UniToStr(cn_username, sizeof(cn_username), x->subject_name->CommonName);
  PackAddStr(p, "username", cn_username);
 }
 else
 {
  PackAddStr(p, "username", username);
 }

 PackAddInt(p, "authtype", AUTHTYPE_OPENVPN_CERT);

 cert_buf = XToBuf(x, 0);
 PackAddBuf(p, "cert", cert_buf);
 FreeBuf(cert_buf);

 return p;
}
