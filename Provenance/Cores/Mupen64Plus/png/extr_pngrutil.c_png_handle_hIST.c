
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef int png_uint_16 ;
typedef TYPE_1__* png_structrp ;
typedef TYPE_2__* png_inforp ;
typedef int png_byte ;
struct TYPE_12__ {int valid; } ;
struct TYPE_11__ {int mode; scalar_t__ num_palette; } ;


 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_HAVE_PLTE ;
 int PNG_INFO_hIST ;
 int PNG_MAX_PALETTE_LENGTH ;
 int png_chunk_benign_error (TYPE_1__*,char*) ;
 int png_chunk_error (TYPE_1__*,char*) ;
 scalar_t__ png_crc_finish (TYPE_1__*,int) ;
 int png_crc_read (TYPE_1__*,int *,int) ;
 int png_debug (int,char*) ;
 int png_get_uint_16 (int *) ;
 int png_set_hIST (TYPE_1__*,TYPE_2__*,int *) ;

void
png_handle_hIST(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   unsigned int num, i;
   png_uint_16 readbuf[PNG_MAX_PALETTE_LENGTH];

   png_debug(1, "in png_handle_hIST");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      png_chunk_error(png_ptr, "missing IHDR");

   else if ((png_ptr->mode & PNG_HAVE_IDAT) != 0 ||
       (png_ptr->mode & PNG_HAVE_PLTE) == 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of place");
      return;
   }

   else if (info_ptr != ((void*)0) && (info_ptr->valid & PNG_INFO_hIST) != 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "duplicate");
      return;
   }

   num = length / 2 ;

   if (num != (unsigned int) png_ptr->num_palette ||
       num > (unsigned int) PNG_MAX_PALETTE_LENGTH)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "invalid");
      return;
   }

   for (i = 0; i < num; i++)
   {
      png_byte buf[2];

      png_crc_read(png_ptr, buf, 2);
      readbuf[i] = png_get_uint_16(buf);
   }

   if (png_crc_finish(png_ptr, 0) != 0)
      return;

   png_set_hIST(png_ptr, info_ptr, readbuf);
}
