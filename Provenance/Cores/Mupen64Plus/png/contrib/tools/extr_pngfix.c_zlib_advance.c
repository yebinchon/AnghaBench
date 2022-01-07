
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* next_in; int avail_in; int* next_out; int avail_out; int * msg; } ;
struct zlib {int state; int window_bits; int file_bits; int* header; int cksum; scalar_t__ ok_bits; scalar_t__ extra_bytes; scalar_t__ rewrite_offset; void* compressed_digits; int compressed_bytes; void* uncompressed_digits; int uncompressed_bytes; struct chunk* chunk; TYPE_1__ z; int rc; struct file* file; } ;
struct file {int dummy; } ;
struct chunk {int* rewrite_buffer; int rewrite_length; scalar_t__ rewrite_offset; int compressed_bytes; void* compressed_digits; int uncompressed_bytes; void* uncompressed_digits; } ;
typedef scalar_t__ png_uint_32 ;
typedef int png_byte ;


 int ZLIB_FATAL ;
 int ZLIB_OK ;
 int ZLIB_STREAM_END ;
 int ZLIB_TOO_FAR_BACK ;



 int Z_NO_FLUSH ;


 int Z_SYNC_FLUSH ;
 int assert (int) ;
 int chunk_message (struct chunk*,char*) ;
 int inflate (TYPE_1__*,int) ;
 int reread_byte (struct file*) ;
 int strcmp (int *,char*) ;
 void* uarb_add32 (int ,void*,scalar_t__) ;
 void* uarb_copy (int ,int ,void*) ;
 int zlib_message (struct zlib*,int) ;

__attribute__((used)) static int
zlib_advance(struct zlib *zlib, png_uint_32 nbytes)
{
   int state = zlib->state;
   int endrc = 0;
   png_uint_32 in_bytes = 0;
   struct file *file = zlib->file;

   assert(state >= 0);

   while (in_bytes < nbytes && endrc == 0)
   {
      png_uint_32 out_bytes;
      int flush;
      png_byte bIn = reread_byte(file);
      png_byte bOut;

      switch (state)
      {
         case 0:
            {
               int file_bits = 8+(bIn >> 4);
               int new_bits = zlib->window_bits;

               zlib->file_bits = file_bits;






               if (new_bits == 0)
                  zlib->window_bits = ((file_bits > 15) ? 15 : file_bits);

               else if (new_bits != file_bits)
                  bIn = (png_byte)((bIn & 0xf) + ((new_bits-8) << 4));
            }

            zlib->header[0] = bIn;
            zlib->state = state = 1;
            break;

         case 1:
            {
               int b2 = bIn & 0xe0;


               b2 += 0x1f - ((zlib->header[0] << 8) + b2) % 0x1f;


               if (bIn != b2)
               {



                  if (zlib->file_bits == zlib->window_bits)
                     zlib->cksum = 1;

                  bIn = (png_byte)b2;
               }
            }

            zlib->header[1] = bIn;
            zlib->state = state = 2;
            break;

         default:
            break;
      }







      zlib->z.next_in = &bIn;
      zlib->z.avail_in = 1;
      zlib->z.next_out = &bOut;
      zlib->z.avail_out = 0;




      flush = Z_NO_FLUSH;
      out_bytes = 0;




      for (;endrc == 0;
         flush = Z_SYNC_FLUSH,
         zlib->z.next_out = &bOut,
         zlib->z.avail_out = 1,
         ++out_bytes)
      {
         zlib->rc = inflate(&zlib->z, flush);
         out_bytes -= zlib->z.avail_out;

         switch (zlib->rc)
         {
            case 132:
               if (zlib->z.avail_out == 0)
                  continue;

               if (zlib->z.avail_in == 0)
                  break;




               zlib_message(zlib, 1 );
               endrc = 2;
               break;

            case 129:

               assert(zlib->z.avail_out == 0 || zlib->z.avail_in == 0);
               continue;

            case 128:

               zlib->state = 3;
               endrc = 1;
               break;

            case 130:
               zlib_message(zlib, 0 );
               endrc = 2;
               break;

            case 131:

               if (zlib->z.msg != ((void*)0) &&
                  strcmp(zlib->z.msg, "invalid distance too far back") == 0)
               {
                  endrc = (-1);
                  break;
               }


            default:
               zlib_message(zlib, 0 );
               endrc = 2;
               break;
         }




         break;
      }


      zlib->uncompressed_digits = uarb_add32(zlib->uncompressed_bytes,
         zlib->uncompressed_digits, out_bytes);





      assert(zlib->z.avail_in == 0 || endrc != 0);

      in_bytes += 1 - zlib->z.avail_in;
   }

   assert(in_bytes == nbytes || endrc != 0);


   zlib->compressed_digits = uarb_add32(zlib->compressed_bytes,
      zlib->compressed_digits, in_bytes - zlib->z.avail_in);




   if (endrc == 1 && zlib->window_bits < zlib->ok_bits)
   {
      struct chunk *chunk = zlib->chunk;

      chunk->uncompressed_digits = uarb_copy(chunk->uncompressed_bytes,
         zlib->uncompressed_bytes, zlib->uncompressed_digits);
      chunk->compressed_digits = uarb_copy(chunk->compressed_bytes,
         zlib->compressed_bytes, zlib->compressed_digits);
      chunk->rewrite_buffer[0] = zlib->header[0];
      chunk->rewrite_buffer[1] = zlib->header[1];

      if (zlib->window_bits != zlib->file_bits || zlib->cksum)
      {

         chunk->rewrite_offset = zlib->rewrite_offset;
         chunk->rewrite_length = 2;
      }

      else
      {
         chunk->rewrite_offset = 0;
         chunk->rewrite_length = 0;
      }

      if (in_bytes < nbytes)
         chunk_message(chunk, "extra compressed data");

      zlib->extra_bytes = nbytes - in_bytes;
      zlib->ok_bits = zlib->window_bits;
   }

   return endrc;
}
