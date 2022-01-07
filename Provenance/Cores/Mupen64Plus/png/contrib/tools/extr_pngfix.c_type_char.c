
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;



__attribute__((used)) static char
type_char(png_uint_32 v)
{






   if (v & 32)
      return "!abcdefghijklmnopqrstuvwxyz56789"[(v-96)&31];

   else
      return "@ABCDEFGHIJKLMNOPQRSTUVWXYZ01234"[(v-64)&31];
}
