
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int png_fixed_point ;
typedef TYPE_1__* png_const_structrp ;
typedef char* png_const_charp ;
typedef TYPE_2__* png_colorspacerp ;
struct TYPE_9__ {int flags; int gamma; } ;
struct TYPE_8__ {int mode; } ;


 int PNG_CHUNK_WRITE_ERROR ;
 int PNG_COLORSPACE_FROM_gAMA ;
 int PNG_COLORSPACE_HAVE_GAMMA ;
 int PNG_COLORSPACE_INVALID ;
 int PNG_IS_READ_STRUCT ;
 int png_chunk_report (TYPE_1__*,char*,int ) ;
 scalar_t__ png_colorspace_check_gamma (TYPE_1__*,TYPE_2__*,int,int) ;

void
png_colorspace_set_gamma(png_const_structrp png_ptr,
    png_colorspacerp colorspace, png_fixed_point gAMA)
{
   png_const_charp errmsg;

   if (gAMA < 16 || gAMA > 625000000)
      errmsg = "gamma value out of range";
   else if ((colorspace->flags & PNG_COLORSPACE_INVALID) != 0)
      return;

   else
   {
      if (png_colorspace_check_gamma(png_ptr, colorspace, gAMA,
          1 ) != 0)
      {

         colorspace->gamma = gAMA;
         colorspace->flags |=
            (PNG_COLORSPACE_HAVE_GAMMA | PNG_COLORSPACE_FROM_gAMA);
      }






      return;
   }


   colorspace->flags |= PNG_COLORSPACE_INVALID;
   png_chunk_report(png_ptr, errmsg, PNG_CHUNK_WRITE_ERROR);
}
