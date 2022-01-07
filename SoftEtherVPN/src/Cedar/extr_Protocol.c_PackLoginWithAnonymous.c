
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;


 int CLIENT_AUTHTYPE_ANONYMOUS ;
 int * NewPack () ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,char*) ;

PACK *PackLoginWithAnonymous(char *hubname, char *username)
{
 PACK *p;

 if (hubname == ((void*)0) || username == ((void*)0))
 {
  return ((void*)0);
 }

 p = NewPack();
 PackAddStr(p, "method", "login");
 PackAddStr(p, "hubname", hubname);
 PackAddStr(p, "username", username);
 PackAddInt(p, "authtype", CLIENT_AUTHTYPE_ANONYMOUS);

 return p;
}
