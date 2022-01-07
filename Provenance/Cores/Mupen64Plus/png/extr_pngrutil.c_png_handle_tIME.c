
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int png_uint_32 ;
struct TYPE_13__ {int year; void* month; void* day; void* hour; void* minute; void* second; } ;
typedef TYPE_1__ png_time ;
typedef TYPE_2__* png_structrp ;
typedef TYPE_3__* png_inforp ;
typedef void* png_byte ;
struct TYPE_15__ {int valid; } ;
struct TYPE_14__ {int mode; } ;


 int PNG_AFTER_IDAT ;
 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_INFO_tIME ;
 int png_chunk_benign_error (TYPE_2__*,char*) ;
 int png_chunk_error (TYPE_2__*,char*) ;
 scalar_t__ png_crc_finish (TYPE_2__*,int) ;
 int png_crc_read (TYPE_2__*,void**,int) ;
 int png_debug (int,char*) ;
 int png_get_uint_16 (void**) ;
 int png_set_tIME (TYPE_2__*,TYPE_3__*,TYPE_1__*) ;

void
png_handle_tIME(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_byte buf[7];
   png_time mod_time;

   png_debug(1, "in png_handle_tIME");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      png_chunk_error(png_ptr, "missing IHDR");

   else if (info_ptr != ((void*)0) && (info_ptr->valid & PNG_INFO_tIME) != 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "duplicate");
      return;
   }

   if ((png_ptr->mode & PNG_HAVE_IDAT) != 0)
      png_ptr->mode |= PNG_AFTER_IDAT;

   if (length != 7)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "invalid");
      return;
   }

   png_crc_read(png_ptr, buf, 7);

   if (png_crc_finish(png_ptr, 0) != 0)
      return;

   mod_time.second = buf[6];
   mod_time.minute = buf[5];
   mod_time.hour = buf[4];
   mod_time.day = buf[3];
   mod_time.month = buf[2];
   mod_time.year = png_get_uint_16(buf);

   png_set_tIME(png_ptr, info_ptr, &mod_time);
}
