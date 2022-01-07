
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
typedef int png_size_t ;
typedef int * png_bytep ;
struct TYPE_6__ {scalar_t__ flush_rows; scalar_t__ flush_dist; int * row_buf; int * prev_row; } ;


 int Z_NO_FLUSH ;
 int png_compress_IDAT (TYPE_1__*,int *,int ,int ) ;
 int png_debug (int,char*) ;
 int png_debug1 (int,char*,int ) ;
 int png_write_finish_row (TYPE_1__*) ;
 int png_write_flush (TYPE_1__*) ;

__attribute__((used)) static void
png_write_filtered_row(png_structrp png_ptr, png_bytep filtered_row,
    png_size_t full_row_length )
{
   png_debug(1, "in png_write_filtered_row");

   png_debug1(2, "filter = %d", filtered_row[0]);

   png_compress_IDAT(png_ptr, filtered_row, full_row_length, Z_NO_FLUSH);
   png_write_finish_row(png_ptr);
}
