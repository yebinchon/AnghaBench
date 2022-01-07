
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uInt ;
typedef scalar_t__* png_uint_32p ;
typedef scalar_t__ png_uint_32 ;
typedef TYPE_2__* png_structrp ;
typedef int png_const_bytep ;
typedef int * png_bytep ;
typedef scalar_t__ png_alloc_size_t ;
struct TYPE_6__ {scalar_t__ avail_in; scalar_t__ avail_out; int msg; int * next_out; int next_in; } ;
struct TYPE_7__ {scalar_t__ zowner; TYPE_1__ zstream; } ;
typedef int Byte ;


 int PNGZ_INPUT_CAST (int ) ;
 int PNGZ_MSG_CAST (char*) ;
 int PNG_INFLATE (TYPE_2__*,int ) ;
 int PNG_INFLATE_BUF_SIZE ;
 scalar_t__ ZLIB_IO_MAX ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_ERROR ;
 int Z_SYNC_FLUSH ;
 int png_zstream_error (TYPE_2__*,int) ;

__attribute__((used)) static int
png_inflate(png_structrp png_ptr, png_uint_32 owner, int finish,
                 png_const_bytep input, png_uint_32p input_size_ptr,
                  png_bytep output, png_alloc_size_t *output_size_ptr)
{
   if (png_ptr->zowner == owner)
   {
      int ret;
      png_alloc_size_t avail_out = *output_size_ptr;
      png_uint_32 avail_in = *input_size_ptr;
      png_ptr->zstream.next_in = PNGZ_INPUT_CAST(input);

      png_ptr->zstream.avail_in = 0;
      png_ptr->zstream.avail_out = 0;




      if (output != ((void*)0))
         png_ptr->zstream.next_out = output;

      do
      {
         uInt avail;
         Byte local_buffer[PNG_INFLATE_BUF_SIZE];
         avail_in += png_ptr->zstream.avail_in;

         avail = ZLIB_IO_MAX;

         if (avail_in < avail)
            avail = (uInt)avail_in;

         avail_in -= avail;
         png_ptr->zstream.avail_in = avail;


         avail_out += png_ptr->zstream.avail_out;

         avail = ZLIB_IO_MAX;

         if (output == ((void*)0))
         {



            png_ptr->zstream.next_out = local_buffer;
            if ((sizeof local_buffer) < avail)
               avail = (sizeof local_buffer);
         }

         if (avail_out < avail)
            avail = (uInt)avail_out;

         png_ptr->zstream.avail_out = avail;
         avail_out -= avail;







         ret = PNG_INFLATE(png_ptr, avail_out > 0 ? Z_NO_FLUSH :
             (finish ? Z_FINISH : Z_SYNC_FLUSH));
      } while (ret == Z_OK);


      if (output == ((void*)0))
         png_ptr->zstream.next_out = ((void*)0);


      avail_in += png_ptr->zstream.avail_in;
      avail_out += png_ptr->zstream.avail_out;




      if (avail_out > 0)
         *output_size_ptr -= avail_out;

      if (avail_in > 0)
         *input_size_ptr -= avail_in;


      png_zstream_error(png_ptr, ret);
      return ret;
   }

   else
   {




      png_ptr->zstream.msg = PNGZ_MSG_CAST("zstream unclaimed");
      return Z_STREAM_ERROR;
   }
}
