
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ h; TYPE_2__* ps; } ;
typedef TYPE_1__ standard_display ;
typedef scalar_t__ png_uint_32 ;
typedef int png_const_structp ;
struct TYPE_6__ {int validated; } ;


 int standard_row_validate (TYPE_1__*,int ,int,int,scalar_t__) ;
 int store_image_check (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
standard_image_validate(standard_display *dp, png_const_structp pp, int iImage,
    int iDisplay)
{
   png_uint_32 y;

   if (iImage >= 0)
      store_image_check(dp->ps, pp, iImage);

   if (iDisplay >= 0)
      store_image_check(dp->ps, pp, iDisplay);

   for (y=0; y<dp->h; ++y)
      standard_row_validate(dp, pp, iImage, iDisplay, y);


   dp->ps->validated = 1;
}
