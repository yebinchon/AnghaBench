
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ps; int bit_width; int id; } ;
typedef TYPE_1__ standard_display ;
typedef scalar_t__ png_uint_32 ;
typedef int png_const_structp ;
typedef int png_byte ;


 int STANDARD_ROWMAX ;
 int memset (int *,int,int) ;
 int pixel_cmp (int *,int *,int ) ;
 int png_error (int ,char*) ;
 int sprintf (char*,char*,unsigned long,int,int ,int ) ;
 int standard_row (int ,int *,int ,scalar_t__) ;
 int * store_image_row (int ,int ,int,scalar_t__) ;

__attribute__((used)) static void
standard_row_validate(standard_display *dp, png_const_structp pp,
   int iImage, int iDisplay, png_uint_32 y)
{
   int where;
   png_byte std[STANDARD_ROWMAX];




   memset(std, 178, sizeof std);
   standard_row(pp, std, dp->id, y);






   if (iImage >= 0 &&
      (where = pixel_cmp(std, store_image_row(dp->ps, pp, iImage, y),
            dp->bit_width)) != 0)
   {
      char msg[64];
      sprintf(msg, "PNG image row[%lu][%d] changed from %.2x to %.2x",
         (unsigned long)y, where-1, std[where-1],
         store_image_row(dp->ps, pp, iImage, y)[where-1]);
      png_error(pp, msg);
   }

   if (iDisplay >= 0 &&
      (where = pixel_cmp(std, store_image_row(dp->ps, pp, iDisplay, y),
         dp->bit_width)) != 0)
   {
      char msg[64];
      sprintf(msg, "display row[%lu][%d] changed from %.2x to %.2x",
         (unsigned long)y, where-1, std[where-1],
         store_image_row(dp->ps, pp, iDisplay, y)[where-1]);
      png_error(pp, msg);
   }
}
