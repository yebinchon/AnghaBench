
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IPV6_ADDR ;
typedef int IP ;


 int IPv6AddrToIP (int *,int *) ;
 int MaskToStrEx (char*,int ,int *,int) ;
 int StrCpy (char*,int ,char*) ;

void Mask6AddrToStrEx(char *str, UINT size, IPV6_ADDR *mask, bool always_full_address)
{
 IP ip;


 if (str == ((void*)0) || mask == ((void*)0))
 {
  StrCpy(str, size, "");
  return;
 }

 IPv6AddrToIP(&ip, mask);

 MaskToStrEx(str, size, &ip, always_full_address);
}
