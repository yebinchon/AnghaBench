
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * idat; struct chunk* chunk; } ;
struct chunk {int chunk_length; } ;
typedef int png_uint_32 ;


 int assert (int) ;
 int chunk_message (struct chunk*,char*) ;
 scalar_t__ reread_byte (struct file*) ;
 int setpos (struct chunk*) ;
 int zlib_check (struct file*,int) ;

__attribute__((used)) static int
process_zTXt_iCCP(struct file *file)



{
   struct chunk *chunk = file->chunk;
   png_uint_32 length;
   png_uint_32 index = 0;

   assert(chunk != ((void*)0) && file->idat == ((void*)0));
   length = chunk->chunk_length;
   setpos(chunk);

   while (length >= 9)
   {
      --length;
      ++index;
      if (reread_byte(file) == 0)
      {
         --length;
         ++index;
         (void)reread_byte(file);
         return zlib_check(file, index);
      }
   }

   chunk_message(chunk, "too short");
   return 0;
}
