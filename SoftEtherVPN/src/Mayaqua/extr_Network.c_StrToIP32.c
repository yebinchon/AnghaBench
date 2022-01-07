
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IPToUINT (int *) ;
 int StrToIP (int *,char*) ;

UINT StrToIP32(char *str)
{
 IP ip;

 if (str == ((void*)0))
 {
  return 0;
 }

 if (StrToIP(&ip, str) == 0)
 {
  return 0;
 }

 return IPToUINT(&ip);
}
