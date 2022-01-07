
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int MaskToStrEx (char*,int ,int *,int) ;
 int UINTToIP (int *,int ) ;

void MaskToStr32Ex(char *str, UINT size, UINT mask, bool always_full_address)
{
 IP ip;

 UINTToIP(&ip, mask);

 MaskToStrEx(str, size, &ip, always_full_address);
}
