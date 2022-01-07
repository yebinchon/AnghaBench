
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int SmbAuthenticate (char*,char*,char*,char*,int ,int *,int *,int *) ;

bool SmbCheckLogon(char* name, char* password, char* domainname, char* groupname, UINT timeout)
{
 return SmbAuthenticate(name, password, domainname, groupname, timeout, ((void*)0), ((void*)0), ((void*)0));
}
