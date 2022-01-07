
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;


 int CLIENT_AUTHTYPE_PLAIN_PASSWORD ;
 int * NewPack () ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,void*) ;

PACK *PackLoginWithPlainPassword(char *hubname, char *username, void *plain_password)
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
 PackAddInt(p, "authtype", CLIENT_AUTHTYPE_PLAIN_PASSWORD);
 PackAddStr(p, "plain_password", plain_password);

 return p;
}
