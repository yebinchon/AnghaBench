
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int ptsize; int font; struct TYPE_6__* next; } ;
typedef TYPE_1__ gx_font_cache_entry_t ;
typedef int VGFT_FONT_T ;
typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_7__ {int len; int mem; } ;


 int GX_LOG (char*,scalar_t__,...) ;
 scalar_t__ VCOS_SUCCESS ;
 TYPE_5__ default_font ;
 int fname ;
 TYPE_1__* fonts ;
 int vcos_free (TYPE_1__*) ;
 TYPE_1__* vcos_malloc (int,char*) ;
 scalar_t__ vgft_font_convert_glyphs (int *,int,int,int) ;
 scalar_t__ vgft_font_init (int *) ;
 scalar_t__ vgft_font_load_mem (int *,int ,int ) ;
 int vgft_font_term (int *) ;

__attribute__((used)) static VGFT_FONT_T *find_font(const char *text, uint32_t text_size)
{
   int ptsize, dpi_x = 0, dpi_y = 0;
   VCOS_STATUS_T status;
   gx_font_cache_entry_t *font;

   ptsize = text_size << 6;

   for (font = fonts; font; font = font->next)
   {
      if (font->ptsize == ptsize)
         return &font->font;
   }

   font = vcos_malloc(sizeof(*font), "font");
   if (!font)
      return ((void*)0);

   font->ptsize = ptsize;

   status = vgft_font_init(&font->font);
   if (status != VCOS_SUCCESS)
   {
      vcos_free(font);
      return ((void*)0);
   }


   status = vgft_font_load_mem(&font->font, default_font.mem, default_font.len);
   if (status != VCOS_SUCCESS)
   {
      GX_LOG("Could not load font from memory: %d", status);
      vgft_font_term(&font->font);
      vcos_free(font);
      return ((void*)0);
   }

   status = vgft_font_convert_glyphs(&font->font, ptsize, dpi_x, dpi_y);
   if (status != VCOS_SUCCESS)
   {
      GX_LOG("Could not convert font '%s' at size %d", fname, ptsize);
      vgft_font_term(&font->font);
      vcos_free(font);
      return ((void*)0);
   }

   font->next = fonts;
   fonts = font;

   return &font->font;
}
