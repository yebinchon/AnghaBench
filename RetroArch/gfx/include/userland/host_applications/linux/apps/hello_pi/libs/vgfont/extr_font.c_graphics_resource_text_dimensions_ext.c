
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int VGfloat ;
typedef int VGFT_FONT_T ;
typedef int GX_CLIENT_STATE_T ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 int * find_font (char const*,int const) ;
 int gx_priv_restore (int *) ;
 int gx_priv_save (int *,int ) ;
 int vgft_get_text_extents (int *,char const*,int const,double,double,int *,int *) ;

int32_t graphics_resource_text_dimensions_ext(GRAPHICS_RESOURCE_HANDLE res,
                                              const char *text,
                                              const uint32_t text_length,
                                              uint32_t *width,
                                              uint32_t *height,
                                              const uint32_t text_size )
{
   GX_CLIENT_STATE_T save;
   VGfloat w, h;
   int ret = -1;

   gx_priv_save(&save, res);

   VGFT_FONT_T *font = find_font(text, text_size);
   if (!font)
      goto finish;

   vgft_get_text_extents(font, text, text_length, 0.0, 0.0, &w, &h);
   *width = w;
   *height = h;
   ret = 0;

finish:
   gx_priv_restore(&save);
   return ret;
}
