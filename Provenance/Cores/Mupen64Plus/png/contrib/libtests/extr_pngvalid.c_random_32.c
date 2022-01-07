
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ png_uint_32 ;
typedef int png_byte ;


 scalar_t__ png_get_uint_32 (int *) ;
 int store_pool_mark (int *) ;

__attribute__((used)) static png_uint_32
random_32(void)
{

   for (;;)
   {
      png_byte mark[4];
      png_uint_32 result;

      store_pool_mark(mark);
      result = png_get_uint_32(mark);

      if (result != 0)
         return result;
   }
}
