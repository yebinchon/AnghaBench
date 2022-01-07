
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int MaskToStr32Ex (char*,int ,int ,int) ;

void MaskToStr32(char *str, UINT size, UINT mask)
{
 MaskToStr32Ex(str, size, mask, 0);
}
