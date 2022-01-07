
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_structrp ;
typedef int png_size_t ;
typedef scalar_t__ png_fixed_point ;
typedef int png_byte ;


 int png_debug (int,char*) ;
 int png_gAMA ;
 int png_save_uint_32 (int *,int ) ;
 int png_write_complete_chunk (int ,int ,int *,int ) ;

void
png_write_gAMA_fixed(png_structrp png_ptr, png_fixed_point file_gamma)
{
   png_byte buf[4];

   png_debug(1, "in png_write_gAMA");


   png_save_uint_32(buf, (png_uint_32)file_gamma);
   png_write_complete_chunk(png_ptr, png_gAMA, buf, (png_size_t)4);
}
