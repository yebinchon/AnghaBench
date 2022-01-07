
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IPToStr (char*,int ,int *) ;
 int UINTToIP (int *,int ) ;

void IPToStr32(char *str, UINT size, UINT ip)
{
 IP ip_st;

 if (str == ((void*)0))
 {
  return;
 }

 UINTToIP(&ip_st, ip);
 IPToStr(str, size, &ip_st);
}
