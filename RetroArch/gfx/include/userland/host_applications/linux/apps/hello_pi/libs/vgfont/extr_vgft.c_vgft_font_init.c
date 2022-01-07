
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vg_font; int * ft_face; } ;
typedef TYPE_1__ VGFT_FONT_T ;
typedef int VCOS_STATUS_T ;


 int VCOS_ENOMEM ;
 int VCOS_SUCCESS ;
 scalar_t__ VG_INVALID_HANDLE ;
 scalar_t__ vgCreateFont (int ) ;

VCOS_STATUS_T vgft_font_init(VGFT_FONT_T *font)
{
   font->ft_face = ((void*)0);
   font->vg_font = vgCreateFont(0);
   if (font->vg_font == VG_INVALID_HANDLE)
   {
      return VCOS_ENOMEM;
   }
   return VCOS_SUCCESS;
}
