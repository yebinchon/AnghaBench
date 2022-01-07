
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ft_face; } ;
typedef TYPE_1__ VGFT_FONT_T ;
typedef int VCOS_STATUS_T ;


 scalar_t__ FT_New_Face (int ,char const*,int ,int *) ;
 int VCOS_EINVAL ;
 int VCOS_SUCCESS ;
 int lib ;

VCOS_STATUS_T vgft_font_load_file(VGFT_FONT_T *font, const char *file)
{
   if (FT_New_Face(lib, file, 0, &font->ft_face)) {
      return VCOS_EINVAL;
   }
   return VCOS_SUCCESS;
}
