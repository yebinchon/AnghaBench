
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sha0 (void*,char*,int ) ;
 int StrLen (char*) ;

void HashAdminPassword(void *hash, char *password)
{

 if (hash == ((void*)0) || password == ((void*)0))
 {
  return;
 }

 Sha0(hash, password, StrLen(password));
}
