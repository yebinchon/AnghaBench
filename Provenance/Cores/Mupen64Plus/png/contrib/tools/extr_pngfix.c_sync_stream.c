
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int type; int read_count; int length; int data_pos; TYPE_1__* global; int status_code; } ;
typedef int png_uint_32 ;
typedef int png_byte ;
struct TYPE_2__ {scalar_t__ verbose; } ;


 int EOF ;
 int READ_ERROR_CODE ;
 int STREAM_ERROR ;
 scalar_t__ chunk_type_valid (int) ;
 int crc_init_4 (int) ;
 int crc_one_byte (int,int) ;
 int file_setpos (struct file*,int *) ;
 int fputs (char*,int ) ;
 int get32 (int*,unsigned int) ;
 int png_IEND ;
 int process_chunk (struct file*,int,int,int) ;
 int putc (char,int ) ;
 int read_4 (struct file*,int*) ;
 int read_byte (struct file*) ;
 int stderr ;
 int stop (struct file*,int ,char*) ;
 int type_name (int,int ) ;

__attribute__((used)) static void
sync_stream(struct file *file)



{
   png_uint_32 file_crc;

   file->status_code |= STREAM_ERROR;

   if (file->global->verbose)
   {
      fputs(" SYNC ", stderr);
      type_name(file->type, stderr);
      putc('\n', stderr);
   }


   file_setpos(file, &file->data_pos);
   file->read_count = 8;

   if (read_4(file, &file_crc) == 4)
   {





      png_uint_32 length;
      png_uint_32 type = file->type;
      png_uint_32 crc = crc_init_4(type);
      png_byte buffer[8];
      unsigned int nread = 0, nused = 0;

      for (length=0; length <= 0x7fffffff; ++length)
      {
         int ch;

         if ((crc ^ 0xffffffff) == file_crc)
         {



            if (type == png_IEND)
            {
               file->length = length;
               process_chunk(file, file_crc, 0, 0);
               return;
            }

            else
            {

               while (nread < 8+nused)
               {
                  ch = read_byte(file);
                  if (ch == EOF)
                     goto truncated;
                  buffer[(nread++) & 7] = (png_byte)ch;
               }


               nread -= nused & ~7;
               nused -= nused & ~7;


               {
                  png_uint_32 next_length = get32(buffer, nused);

                  if (next_length < 0x7fffffff)
                  {
                     png_uint_32 next_type = get32(buffer, nused+4);

                     if (chunk_type_valid(next_type))
                     {
                        file->read_count -= 8;
                        process_chunk(file, file_crc, next_length, next_type);
                        return;
                     }
                  }


               }
            }
         }
         if (nread <= nused)
         {
            ch = read_byte(file);

            if (ch == EOF)
               goto truncated;
         }

         else
            ch = buffer[(++nused) & 7];

         crc = crc_one_byte(crc, file_crc >> 24);
         file_crc = (file_crc << 8) + ch;
      }




   }

truncated:
   stop(file, READ_ERROR_CODE, "damaged PNG stream");
}
