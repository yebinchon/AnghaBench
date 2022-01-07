
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_structrp ;
typedef int png_size_t ;
typedef TYPE_2__* png_row_infop ;
typedef unsigned int* png_bytep ;
struct TYPE_15__ {int rowbytes; int pixel_depth; } ;
struct TYPE_14__ {unsigned int* row_buf; unsigned int do_filter; unsigned int* try_row; unsigned int* tst_row; } ;


 unsigned int PNG_FILTER_AVG ;
 unsigned int PNG_FILTER_NONE ;
 unsigned int PNG_FILTER_PAETH ;
 unsigned int PNG_FILTER_SUB ;
 unsigned int PNG_FILTER_UP ;
 int PNG_SIZE_MAX ;
 int abs (int) ;
 int png_debug (int,char*) ;
 int png_setup_avg_row (TYPE_1__*,int,int,int) ;
 int png_setup_avg_row_only (TYPE_1__*,int,int) ;
 int png_setup_paeth_row (TYPE_1__*,int,int,int) ;
 int png_setup_paeth_row_only (TYPE_1__*,int,int) ;
 int png_setup_sub_row (TYPE_1__*,int,int,int) ;
 int png_setup_sub_row_only (TYPE_1__*,int,int) ;
 int png_setup_up_row (TYPE_1__*,int,int) ;
 int png_setup_up_row_only (TYPE_1__*,int) ;
 int png_write_filtered_row (TYPE_1__*,unsigned int*,int) ;

void
png_write_find_filter(png_structrp png_ptr, png_row_infop row_info)
{

   png_write_filtered_row(png_ptr, png_ptr->row_buf, row_info->rowbytes+1);
}
