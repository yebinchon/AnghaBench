
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {scalar_t__ length; scalar_t__ type; int read_count; int crc; TYPE_1__* global; } ;
typedef scalar_t__ png_uint_32 ;
struct TYPE_2__ {int verbose; } ;


 int UNEXPECTED_ERROR_CODE ;
 scalar_t__ chunk_type_valid (scalar_t__) ;
 int crc_init_4 (scalar_t__) ;
 scalar_t__ crc_read_many (struct file*,scalar_t__) ;
 int fprintf (int ,char*,unsigned long) ;
 int fputs (char*,int ) ;
 scalar_t__ png_IEND ;
 int process_chunk (struct file*,scalar_t__,scalar_t__,scalar_t__) ;
 unsigned int read_4 (struct file*,scalar_t__*) ;
 int stderr ;
 int stop (struct file*,int ,char*) ;
 int sync_stream (struct file*) ;
 int type_name (scalar_t__,int ) ;

__attribute__((used)) static void
read_chunk(struct file *file)
{
   png_uint_32 length = file->length;
   png_uint_32 type = file->type;




   if (type == 0)
      stop(file, UNEXPECTED_ERROR_CODE, "read beyond IEND");

   if (file->global->verbose > 2)
   {
      fputs("   ", stderr);
      type_name(type, stderr);
      fprintf(stderr, " %lu\n", (unsigned long)length);
   }





   file->crc = crc_init_4(type);
   if (crc_read_many(file, length))
   {
      png_uint_32 file_crc;
      unsigned int nread = read_4(file, &file_crc);

      if (nread == 4)
      {
         if (type != png_IEND)
         {
            png_uint_32 next_length;

            nread += read_4(file, &next_length);
            if (nread == 8 && next_length <= 0x7fffffff)
            {
               png_uint_32 next_type;

               nread += read_4(file, &next_type);

               if (nread == 12 && chunk_type_valid(next_type))
               {



                  file->read_count -= 8;
                  process_chunk(file, file_crc, next_length, next_type);
                  return;
               }
            }
         }

         else
         {
            process_chunk(file, file_crc, 0, 0);
            return;
         }
      }
   }
   sync_stream(file);
}
