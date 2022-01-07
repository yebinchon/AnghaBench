
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gx_font_cache_entry_t {int font; struct gx_font_cache_entry_t* next; } ;


 struct gx_font_cache_entry_t* fonts ;
 int vcos_free (struct gx_font_cache_entry_t*) ;
 int vgft_font_term (int *) ;

void gx_font_cache_flush(void)
{
   while (fonts != ((void*)0))
   {
      struct gx_font_cache_entry_t *next = fonts->next;
      vgft_font_term(&fonts->font);
      vcos_free(fonts);
      fonts = next;
   }
}
