
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_uint_32 ;
struct TYPE_3__ {int image_h; int cb_row; scalar_t__ cb_image; int * image; } ;
typedef TYPE_1__ png_store ;
typedef scalar_t__ png_size_t ;
typedef int png_const_structp ;
typedef int * png_bytep ;


 int png_error (int ,char*) ;

__attribute__((used)) static png_bytep
store_image_row(const png_store* ps, png_const_structp pp, int nImage,
   png_uint_32 y)
{
   png_size_t coffset = (nImage * ps->image_h + y) * (ps->cb_row + 5) + 2;

   if (ps->image == ((void*)0))
      png_error(pp, "no allocated image");

   if (coffset + ps->cb_row + 3 > ps->cb_image)
      png_error(pp, "image too small");

   return ps->image + coffset;
}
