
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int red; int green; int blue; int alpha; } ;
typedef TYPE_1__ store_palette_entry ;
typedef int png_structp ;
typedef int png_store ;
typedef int png_infop ;
struct TYPE_6__ {int red; int green; int blue; } ;
typedef TYPE_2__ png_color ;
typedef int png_byte ;


 TYPE_1__* make_standard_palette (int *,int,int) ;
 int png_set_PLTE (int ,int ,TYPE_2__*,int) ;
 int png_set_tRNS (int ,int ,int*,int,int ) ;

__attribute__((used)) static void
init_standard_palette(png_store *ps, png_structp pp, png_infop pi, int npalette,
   int do_tRNS)
{
   store_palette_entry *ppal = make_standard_palette(ps, npalette, do_tRNS);

   {
      int i;
      png_color palette[256];


      for (i=0; i<npalette; ++i)
      {
         palette[i].red = ppal[i].red;
         palette[i].green = ppal[i].green;
         palette[i].blue = ppal[i].blue;
      }


      for (; i<256; ++i)
         palette[i].red = palette[i].green = palette[i].blue = 42;

      png_set_PLTE(pp, pi, palette, npalette);
   }

   if (do_tRNS)
   {
      int i, j;
      png_byte tRNS[256];


      for (i=j=0; i<npalette; ++i)
         if ((tRNS[i] = ppal[i].alpha) < 255)
            j = i+1;


      for (; i<256; ++i)
         tRNS[i] = 24;





   }
}
