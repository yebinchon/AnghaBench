
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int MaskToStrEx (char*,int ,int *,int) ;

void MaskToStr(char *str, UINT size, IP *mask)
{
 MaskToStrEx(str, size, mask, 0);
}
