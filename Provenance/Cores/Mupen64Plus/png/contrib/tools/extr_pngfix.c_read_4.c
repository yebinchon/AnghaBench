
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int png_uint_32 ;


 int EOF ;
 int read_byte (struct file*) ;

__attribute__((used)) static unsigned int
read_4(struct file *file, png_uint_32 *pu)



{
   unsigned int i = 0;
   png_uint_32 val = 0;

   do
   {
      int ch = read_byte(file);

      if (ch == EOF)
         return i;

      val = (val << 8) + ch;
   } while (++i < 4);

   *pu = val;
   return i;
}
