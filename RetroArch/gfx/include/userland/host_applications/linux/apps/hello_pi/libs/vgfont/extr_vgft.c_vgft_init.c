
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FT_Init_FreeType (int *) ;
 int lib ;

int vgft_init(void)
{
   if (FT_Init_FreeType(&lib) == 0)
      return 0;
   else
   {
      return -1;
   }
}
