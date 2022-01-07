
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;
typedef int FOLDER ;


 int CfgGetIp (int *,char*,int *) ;
 int IPToUINT (int *) ;

UINT CfgGetIp32(FOLDER *f, char *name)
{
 IP p;

 if (f == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 if (CfgGetIp(f, name, &p) == 0)
 {
  return 0;
 }

 return IPToUINT(&p);
}
