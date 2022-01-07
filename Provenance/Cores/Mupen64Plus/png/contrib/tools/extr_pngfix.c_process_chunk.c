
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int type; int length; int crc; int data_pos; struct chunk* chunk; void* interlace_method; void* filter_method; void* compression_method; void* color_type; void* bit_depth; void* height; void* width; int (* alloc ) (struct file*,int) ;int * idat; TYPE_1__* global; int status_code; } ;
struct chunk {int const chunk_type; int chunk_length; scalar_t__ rewrite_offset; scalar_t__ rewrite_length; } ;
typedef int png_uint_32 ;
struct TYPE_2__ {int verbose; scalar_t__ skip; } ;


 int CRC_ERROR ;
 scalar_t__ CRITICAL (int const) ;
 int READ_ERROR_CODE ;
 scalar_t__ SKIP_BAD_CRC ;
 int assert (int) ;
 int calc_image_size (struct file*) ;
 int chunk_end (struct chunk**) ;
 int file_setpos (struct file*,int *) ;
 int fprintf (int ,char*,unsigned long,int,int) ;
 int fputs (char*,int ) ;
 int getpos (struct file*) ;





 int process_IDAT (struct file*) ;
 int process_iTXt (struct file*) ;
 int process_zTXt_iCCP (struct file*) ;
 int read_chunk (struct file*) ;
 void* reread_4 (struct file*) ;
 void* reread_byte (struct file*) ;
 int setpos (struct chunk*) ;
 scalar_t__ skip_chunk_type (TYPE_1__*,int const) ;
 int stderr ;
 int stop (struct file*,int ,char*) ;
 int stop_invalid (struct file*,char*) ;
 int stub1 (struct file*,int) ;
 int stub2 (struct file*,int) ;
 int type_message (struct file*,int const,char*) ;
 int type_name (int,int ) ;

__attribute__((used)) static void
process_chunk(struct file *file, png_uint_32 file_crc, png_uint_32 next_length,
   png_uint_32 next_type)







{
   const png_uint_32 type = file->type;

   if (file->global->verbose > 1)
   {
      fputs("  ", stderr);
      type_name(file->type, stderr);
      fprintf(stderr, " %lu 0x%.8x 0x%.8x\n", (unsigned long)file->length,
         file->crc ^ 0xffffffff, file_crc);
   }





   if ((file->crc ^ 0xffffffff) != file_crc)
   {





      file->status_code |= CRC_ERROR;


      if (file->global->skip != SKIP_BAD_CRC)
         type_message(file, type, "bad CRC");


      else if (CRITICAL(type))
         stop(file, READ_ERROR_CODE, "bad CRC in critical chunk");

      else
      {
         type_message(file, type, "skipped: bad CRC");


         goto skip_chunk;
      }
   }





   if (skip_chunk_type(file->global, type))
      goto skip_chunk;






   if (type != 132)
      file->alloc(file, 0 );

   else if (file->idat == ((void*)0))
      file->alloc(file, 1 );

   else
   {

      assert(file->chunk != ((void*)0));
      assert(file->chunk->chunk_type == 132);
      file->chunk->chunk_length = file->length;
   }






   file->length = next_length;
   file->type = next_type;
   getpos(file);





   file->chunk->rewrite_length = 0;
   file->chunk->rewrite_offset = 0;
   switch (type)
   {
      default:
         return;

      case 131:




         {
            struct chunk *chunk = file->chunk;

            if (chunk->chunk_length != 13)
               stop_invalid(file, "IHDR length");


            setpos(chunk);
            file->width = reread_4(file);
            file->height = reread_4(file);
            file->bit_depth = reread_byte(file);
            file->color_type = reread_byte(file);
            file->compression_method = reread_byte(file);
            file->filter_method = reread_byte(file);
            file->interlace_method = reread_byte(file);




            calc_image_size(file);
         }
         return;


      case 128: case 130:
         if (process_zTXt_iCCP(file))
            return;
         chunk_end(&file->chunk);
         file_setpos(file, &file->data_pos);
         break;

      case 129:
         if (process_iTXt(file))
            return;
         chunk_end(&file->chunk);
         file_setpos(file, &file->data_pos);
         break;

      case 132:
         if (process_IDAT(file))
            return;

         assert(next_type == 132);
         break;
   }
   read_chunk(file);
   return;




skip_chunk:
   file->length = next_length;
   file->type = next_type;
   getpos(file);
   read_chunk(file);
}
