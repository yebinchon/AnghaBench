
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int * f030_coltable_ptr ;

void set_colors_on_f030(void)
{
 int i;
 ULONG *x = (ULONG *) 0xff9800;

 for (i = 0; i < 256; i++)
  x[i] = f030_coltable_ptr[i];
}
