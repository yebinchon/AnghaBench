
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;


 int png_get_uint_32 (unsigned char*) ;
 int randomize (unsigned char*,int) ;

__attribute__((used)) static png_uint_32
random_u32(void)
{
   unsigned char b4[4];
   randomize(b4, sizeof b4);
   return png_get_uint_32(b4);
}
