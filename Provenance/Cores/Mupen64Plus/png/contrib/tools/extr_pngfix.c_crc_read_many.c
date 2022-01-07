
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ crc; } ;
typedef scalar_t__ png_uint_32 ;


 int EOF ;
 scalar_t__ crc_one_byte (scalar_t__,int) ;
 int read_byte (struct file*) ;

__attribute__((used)) static int
crc_read_many(struct file *file, png_uint_32 length)



{
   if (length > 0)
   {
      png_uint_32 crc = file->crc;

      do
      {
         int ch = read_byte(file);

         if (ch == EOF)
            return 0;

         crc = crc_one_byte(crc, ch);
      }
      while (--length > 0);

      file->crc = crc;
   }

   return 1;
}
