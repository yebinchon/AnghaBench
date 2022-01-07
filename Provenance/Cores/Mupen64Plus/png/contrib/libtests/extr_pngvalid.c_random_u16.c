
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_16 ;


 int png_get_uint_16 (unsigned char*) ;
 int randomize (unsigned char*,int) ;

__attribute__((used)) static png_uint_16
random_u16(void)
{
   unsigned char b2[2];
   randomize(b2, sizeof b2);
   return png_get_uint_16(b2);
}
