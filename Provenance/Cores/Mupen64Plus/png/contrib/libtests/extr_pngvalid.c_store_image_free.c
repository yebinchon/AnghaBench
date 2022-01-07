
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* image; size_t cb_image; } ;
typedef TYPE_1__ png_store ;
typedef int * png_const_structp ;
typedef int* png_bytep ;


 int free (int*) ;
 int png_error (int *,char*) ;
 int store_log (TYPE_1__*,int *,char*,int) ;

__attribute__((used)) static void
store_image_free(png_store *ps, png_const_structp pp)
{
   if (ps->image != ((void*)0))
   {
      png_bytep image = ps->image;

      if (image[-1] != 0xed || image[ps->cb_image] != 0xfe)
      {
         if (pp != ((void*)0))
            png_error(pp, "png_store image overwrite (1)");
         else
            store_log(ps, ((void*)0), "png_store image overwrite (2)", 1);
      }

      ps->image = ((void*)0);
      ps->cb_image = 0;
      --image;
      free(image);
   }
}
