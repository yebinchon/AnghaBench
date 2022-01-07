
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfonts_t ;


 int free (int *) ;

__attribute__((used)) static void xfonts_free_font(void *data, bool is_threaded)
{
   xfonts_t *font = (xfonts_t*)data;

   if (font)
      free(font);

   font = ((void*)0);
}
