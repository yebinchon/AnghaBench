
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_structrp ;
typedef int png_byte ;
struct TYPE_8__ {void* io_state; scalar_t__ chunk_name; } ;


 scalar_t__ PNG_CHUNK_FROM_STRING (int *) ;
 void* PNG_IO_CHUNK_DATA ;
 void* PNG_IO_CHUNK_HDR ;
 void* PNG_IO_READING ;
 int png_calculate_crc (TYPE_1__*,int *,int) ;
 int png_check_chunk_name (TYPE_1__*,scalar_t__) ;
 int png_debug2 (int ,char*,unsigned long,unsigned long) ;
 scalar_t__ png_get_uint_31 (TYPE_1__*,int *) ;
 int png_read_data (TYPE_1__*,int *,int) ;
 int png_reset_crc (TYPE_1__*) ;

png_uint_32
png_read_chunk_header(png_structrp png_ptr)
{
   png_byte buf[8];
   png_uint_32 length;
   png_read_data(png_ptr, buf, 8);
   length = png_get_uint_31(png_ptr, buf);


   png_ptr->chunk_name = PNG_CHUNK_FROM_STRING(buf+4);

   png_debug2(0, "Reading %lx chunk, length = %lu",
       (unsigned long)png_ptr->chunk_name, (unsigned long)length);


   png_reset_crc(png_ptr);
   png_calculate_crc(png_ptr, buf + 4, 4);


   png_check_chunk_name(png_ptr, png_ptr->chunk_name);





   return length;
}
