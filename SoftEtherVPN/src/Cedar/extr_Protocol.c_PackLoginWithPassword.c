
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;


 int CLIENT_AUTHTYPE_PASSWORD ;
 int * NewPack () ;
 int PackAddData (int *,char*,void*,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,char*) ;
 int SHA1_SIZE ;

PACK *PackLoginWithPassword(char *hubname, char *username, void *secure_password)
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
 PackAddInt(p, "authtype", CLIENT_AUTHTYPE_PASSWORD);
 PackAddData(p, "secure_password", secure_password, SHA1_SIZE);

 return p;
}
