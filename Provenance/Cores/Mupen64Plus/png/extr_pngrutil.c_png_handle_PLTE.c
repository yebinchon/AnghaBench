
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_structrp ;
typedef TYPE_2__* png_inforp ;
typedef TYPE_3__* png_colorp ;
struct TYPE_18__ {void* blue; void* green; void* red; } ;
typedef TYPE_3__ png_color ;
typedef void* png_byte ;
struct TYPE_17__ {int valid; scalar_t__ num_trans; } ;
struct TYPE_16__ {int mode; int color_type; int bit_depth; int flags; scalar_t__ num_trans; } ;


 int PNG_COLOR_MASK_COLOR ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_FLAG_CRC_ANCILLARY_NOWARN ;
 int PNG_FLAG_CRC_ANCILLARY_USE ;
 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_HAVE_PLTE ;
 int PNG_INFO_bKGD ;
 int PNG_INFO_hIST ;
 int PNG_INFO_tRNS ;
 int PNG_MAX_PALETTE_LENGTH ;
 int png_chunk_benign_error (TYPE_1__*,char*) ;
 int png_chunk_error (TYPE_1__*,char*) ;
 int png_chunk_warning (TYPE_1__*,char*) ;
 scalar_t__ png_crc_error (TYPE_1__*) ;
 int png_crc_finish (TYPE_1__*,int) ;
 int png_crc_read (TYPE_1__*,void**,int) ;
 int png_debug (int,char*) ;
 int png_set_PLTE (TYPE_1__*,TYPE_2__*,TYPE_3__*,int) ;

void
png_handle_PLTE(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_color palette[PNG_MAX_PALETTE_LENGTH];
   int max_palette_length, num, i;




   png_debug(1, "in png_handle_PLTE");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      png_chunk_error(png_ptr, "missing IHDR");






   else if ((png_ptr->mode & PNG_HAVE_PLTE) != 0)
      png_chunk_error(png_ptr, "duplicate");

   else if ((png_ptr->mode & PNG_HAVE_IDAT) != 0)
   {



      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of place");
      return;
   }

   png_ptr->mode |= PNG_HAVE_PLTE;

   if ((png_ptr->color_type & PNG_COLOR_MASK_COLOR) == 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "ignored in grayscale PNG");
      return;
   }


   if (png_ptr->color_type != PNG_COLOR_TYPE_PALETTE)
   {
      png_crc_finish(png_ptr, length);
      return;
   }


   if (length > 3*PNG_MAX_PALETTE_LENGTH || length % 3)
   {
      png_crc_finish(png_ptr, length);

      if (png_ptr->color_type != PNG_COLOR_TYPE_PALETTE)
         png_chunk_benign_error(png_ptr, "invalid");

      else
         png_chunk_error(png_ptr, "invalid");

      return;
   }


   num = (int)length / 3;






   if (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE)
      max_palette_length = (1 << png_ptr->bit_depth);
   else
      max_palette_length = PNG_MAX_PALETTE_LENGTH;

   if (num > max_palette_length)
      num = max_palette_length;
   for (i = 0; i < num; i++)
   {
      png_byte buf[3];

      png_crc_read(png_ptr, buf, 3);

      palette[i].red = buf[0];
      palette[i].green = buf[1];
      palette[i].blue = buf[2];
   }
   if (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE)

   {
      png_crc_finish(png_ptr, (png_uint_32) (length - (unsigned int)num * 3));
   }


   else if (png_crc_error(png_ptr) != 0)
   {
      if ((png_ptr->flags & PNG_FLAG_CRC_ANCILLARY_USE) == 0)
      {
         if ((png_ptr->flags & PNG_FLAG_CRC_ANCILLARY_NOWARN) != 0)
            return;

         else
            png_chunk_error(png_ptr, "CRC error");
      }


      else if ((png_ptr->flags & PNG_FLAG_CRC_ANCILLARY_NOWARN) == 0)
         png_chunk_warning(png_ptr, "CRC error");
   }
   png_set_PLTE(png_ptr, info_ptr, palette, num);
}
