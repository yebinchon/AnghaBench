
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_uint_32 ;
struct TYPE_3__ {int* bits; } ;
typedef TYPE_1__ format_list ;


 int FORMAT_COUNT ;

__attribute__((used)) static int format_set(format_list *pf, png_uint_32 format)
{
   if (format < FORMAT_COUNT)
      return pf->bits[format >> 5] |= ((png_uint_32)1) << (format & 31);

   return 0;
}
