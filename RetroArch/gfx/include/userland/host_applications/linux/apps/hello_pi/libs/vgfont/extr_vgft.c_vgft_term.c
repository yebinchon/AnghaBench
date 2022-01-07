
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FT_Done_FreeType (int ) ;
 int lib ;

void vgft_term(void)
{
   FT_Done_FreeType(lib);
}
