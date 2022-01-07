
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int ITEM ;
typedef int IP ;
typedef int FOLDER ;


 int * CfgAddIp (int *,char*,int *) ;
 int UINTToIP (int *,int ) ;

ITEM *CfgAddIp32(FOLDER *f, char *name, UINT ip)
{
 IP p;

 if (f == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 UINTToIP(&p, ip);

 return CfgAddIp(f, name, &p);
}
