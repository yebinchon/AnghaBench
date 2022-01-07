
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
struct TYPE_13__ {scalar_t__ pixel_depth; scalar_t__ rowbytes; int width; int channels; int bit_depth; int color_type; } ;
typedef TYPE_2__ png_row_info ;
struct TYPE_12__ {scalar_t__ pixel_depth; int transformations; scalar_t__ transformed_pixel_depth; scalar_t__ maximum_pixel_depth; scalar_t__ interlaced; int pass; int height; int * row_buf; scalar_t__ prev_row; int channels; int bit_depth; int color_type; int iwidth; } ;


 int PNG_FILTER_VALUE_LAST ;
 int PNG_FILTER_VALUE_NONE ;
 int PNG_INTERLACE ;
 scalar_t__ PNG_ROWBYTES (scalar_t__,int ) ;
 int memcpy (scalar_t__,int *,scalar_t__) ;
 int png_do_read_interlace (TYPE_2__*,int *,int,int) ;
 int png_do_read_transformations (TYPE_1__*,TYPE_2__*) ;
 int png_error (TYPE_1__*,char*) ;
 int png_push_have_row (TYPE_1__*,int *) ;
 int png_read_filter_row (TYPE_1__*,TYPE_2__*,int *,scalar_t__,int ) ;
 int png_read_push_finish_row (TYPE_1__*) ;

void
png_push_process_row(png_structrp png_ptr)
{

   png_row_info row_info;

   row_info.width = png_ptr->iwidth;
   row_info.color_type = png_ptr->color_type;
   row_info.bit_depth = png_ptr->bit_depth;
   row_info.channels = png_ptr->channels;
   row_info.pixel_depth = png_ptr->pixel_depth;
   row_info.rowbytes = PNG_ROWBYTES(row_info.pixel_depth, row_info.width);

   if (png_ptr->row_buf[0] > PNG_FILTER_VALUE_NONE)
   {
      if (png_ptr->row_buf[0] < PNG_FILTER_VALUE_LAST)
         png_read_filter_row(png_ptr, &row_info, png_ptr->row_buf + 1,
            png_ptr->prev_row + 1, png_ptr->row_buf[0]);
      else
         png_error(png_ptr, "bad adaptive filter value");
   }






   memcpy(png_ptr->prev_row, png_ptr->row_buf, row_info.rowbytes + 1);







   if (png_ptr->transformed_pixel_depth == 0)
   {
      png_ptr->transformed_pixel_depth = row_info.pixel_depth;
      if (row_info.pixel_depth > png_ptr->maximum_pixel_depth)
         png_error(png_ptr, "progressive row overflow");
   }

   else if (png_ptr->transformed_pixel_depth != row_info.pixel_depth)
      png_error(png_ptr, "internal progressive row size calculation error");
   {
      png_push_have_row(png_ptr, png_ptr->row_buf + 1);
      png_read_push_finish_row(png_ptr);
   }
}
