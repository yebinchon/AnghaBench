
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uInt ;
typedef TYPE_2__* png_structrp ;
typedef scalar_t__ png_size_t ;
typedef int * png_bytep ;
struct TYPE_9__ {scalar_t__ avail_in; scalar_t__ avail_out; scalar_t__ next_out; int * next_in; } ;
struct TYPE_10__ {int flags; scalar_t__ row_buf; scalar_t__ row_number; scalar_t__ num_rows; int pass; TYPE_1__ zstream; scalar_t__ zowner; int iwidth; int pixel_depth; } ;


 int PNG_FLAG_ZSTREAM_ENDED ;
 int PNG_INFLATE (TYPE_2__*,int ) ;
 scalar_t__ PNG_ROWBYTES (int ,int ) ;
 int Z_DATA_ERROR ;
 int Z_OK ;
 int Z_STREAM_END ;
 int Z_SYNC_FLUSH ;
 int png_benign_error (TYPE_2__*,char*) ;
 int png_error (TYPE_2__*,char*) ;
 int png_push_process_row (TYPE_2__*) ;
 int png_warning (TYPE_2__*,char*) ;

void
png_process_IDAT_data(png_structrp png_ptr, png_bytep buffer,
    png_size_t buffer_length)
{

   if (!(buffer_length > 0) || buffer == ((void*)0))
      png_error(png_ptr, "No IDAT data (internal error)");





   png_ptr->zstream.next_in = buffer;

   png_ptr->zstream.avail_in = (uInt)buffer_length;




   while (png_ptr->zstream.avail_in > 0 &&
      (png_ptr->flags & PNG_FLAG_ZSTREAM_ENDED) == 0)
   {
      int ret;






      if (!(png_ptr->zstream.avail_out > 0))
      {

         png_ptr->zstream.avail_out = (uInt)(PNG_ROWBYTES(png_ptr->pixel_depth,
             png_ptr->iwidth) + 1);

         png_ptr->zstream.next_out = png_ptr->row_buf;
      }
      ret = PNG_INFLATE(png_ptr, Z_SYNC_FLUSH);


      if (ret != Z_OK && ret != Z_STREAM_END)
      {

         png_ptr->flags |= PNG_FLAG_ZSTREAM_ENDED;
         png_ptr->zowner = 0;




         if (png_ptr->row_number >= png_ptr->num_rows ||
             png_ptr->pass > 6)
            png_warning(png_ptr, "Truncated compressed data in IDAT");

         else
         {
            if (ret == Z_DATA_ERROR)
               png_benign_error(png_ptr, "IDAT: ADLER32 checksum mismatch");
            else
               png_error(png_ptr, "Decompression error in IDAT");
         }


         return;
      }


      if (png_ptr->zstream.next_out != png_ptr->row_buf)
      {




         if (png_ptr->row_number >= png_ptr->num_rows ||
             png_ptr->pass > 6)
         {

            png_warning(png_ptr, "Extra compressed data in IDAT");
            png_ptr->flags |= PNG_FLAG_ZSTREAM_ENDED;
            png_ptr->zowner = 0;




            return;
         }


         if (png_ptr->zstream.avail_out == 0)
            png_push_process_row(png_ptr);
      }


      if (ret == Z_STREAM_END)
         png_ptr->flags |= PNG_FLAG_ZSTREAM_ENDED;
   }





   if (png_ptr->zstream.avail_in > 0)
      png_warning(png_ptr, "Extra compression data in IDAT");
}
