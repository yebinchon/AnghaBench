
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ft_face; } ;
typedef TYPE_1__ VGFT_FONT_T ;
typedef int VCOS_STATUS_T ;


 scalar_t__ FT_New_Memory_Face (int ,void*,size_t,int ,int *) ;
 int VCOS_EINVAL ;
 int VCOS_SUCCESS ;
 int lib ;

VCOS_STATUS_T vgft_font_load_mem(VGFT_FONT_T *font, void *mem, size_t len)
{
   if (FT_New_Memory_Face(lib, mem, len, 0, &font->ft_face))
   {
      return VCOS_EINVAL;
   }
   return VCOS_SUCCESS;
}
