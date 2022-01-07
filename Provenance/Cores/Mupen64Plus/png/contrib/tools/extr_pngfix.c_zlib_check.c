
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * msg; } ;
struct zlib {int ok_bits; TYPE_2__ z; int chunk; int cksum; int uncompressed_digits; int uncompressed_bytes; int file_bits; int window_bits; TYPE_1__* global; } ;
struct file {int status_code; int chunk; int idat; } ;
typedef int png_uint_32 ;
typedef int fpos_t ;
struct TYPE_3__ {int optimize_zlib; } ;


 void* PNGZ_MSG_CAST (char*) ;
 int TOO_FAR_BACK ;



 int assert (int) ;
 int chunk_message (int ,char*) ;
 int file_getpos (struct file*,int *) ;
 int file_setpos (struct file*,int *) ;
 int max_window_bits (int ,int ) ;
 int zlib_end (struct zlib*) ;
 scalar_t__ zlib_init (struct zlib*,int ,int ,int ,int ) ;
 int zlib_message (struct zlib*,int ) ;
 scalar_t__ zlib_reset (struct zlib*,int) ;
 int zlib_run (struct zlib*) ;

__attribute__((used)) static int
zlib_check(struct file *file, png_uint_32 offset)
{
   fpos_t start_pos;
   struct zlib zlib;


   file_getpos(file, &start_pos);


   if (zlib_init(&zlib, file->idat, file->chunk, 0 , offset))
   {
      int min_bits, max_bits, rc;


      rc = zlib_run(&zlib);

      switch (rc)
      {
         case 128:

            file->status_code |= TOO_FAR_BACK;
            min_bits = zlib.window_bits + 1;
            max_bits = 15;
            break;

         case 129:
            if (!zlib.global->optimize_zlib &&
               zlib.window_bits == zlib.file_bits && !zlib.cksum)
            {



               zlib_end(&zlib);
               return 1;
            }

            max_bits = max_window_bits(zlib.uncompressed_bytes,
               zlib.uncompressed_digits);
            if (zlib.ok_bits < max_bits)
               max_bits = zlib.ok_bits;
            min_bits = 8;






            if (zlib.cksum)
               chunk_message(zlib.chunk, "zlib checkum");
            break;


         case 130:

            zlib.z.msg = PNGZ_MSG_CAST("[truncated]");
            zlib_message(&zlib, 0 );


         default:



            zlib_end(&zlib);
            return 0;
      }





      while (min_bits < max_bits || max_bits < zlib.ok_bits )
      {
         int test_bits = (min_bits + max_bits) >> 1;

         if (zlib_reset(&zlib, test_bits))
         {
            file_setpos(file, &start_pos);
            rc = zlib_run(&zlib);

            switch (rc)
            {
               case 128:
                  min_bits = test_bits+1;
                  if (min_bits > max_bits)
                  {




                     assert(test_bits == 15);


                     if (zlib.z.msg == ((void*)0))
                        zlib.z.msg = PNGZ_MSG_CAST(
                           "invalid distance too far back");
                     zlib_message(&zlib, 0 );
                     zlib_end(&zlib);
                     return 0;
                  }
                  break;

               case 129:
                  max_bits = test_bits;
                  break;

               default:




                  zlib_end(&zlib);
                  return 0;
            }
         }

         else
         {
            zlib_end(&zlib);
            return 0;
         }
      }


      assert(zlib.ok_bits == max_bits);
      zlib_end(&zlib);
      return 1;
   }

   else
   {
      zlib_end(&zlib);
      return 0;
   }
}
