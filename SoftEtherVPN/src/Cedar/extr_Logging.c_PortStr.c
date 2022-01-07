
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int UINT ;
typedef int CEDAR ;


 char* CopyStr (char*) ;
 char* GetSvcName (int *,int,int) ;
 int MAX_SIZE ;
 int snprintf (char*,int,char*,...) ;

char *PortStr(CEDAR *cedar, UINT port, bool udp)
{
 char tmp[MAX_SIZE];
 char *name;

 if (cedar == ((void*)0))
 {
  return ((void*)0);
 }

 name = GetSvcName(cedar, udp, port);

 if (name == ((void*)0))
 {
  snprintf(tmp, sizeof(tmp), "%u", port);
 }
 else
 {
  snprintf(tmp, sizeof(tmp), "%s(%u)", name, port);
 }

 return CopyStr(tmp);
}
