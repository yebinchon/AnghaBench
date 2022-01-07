
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_uint_32 ;
struct TYPE_4__ {int* bits; } ;
typedef TYPE_1__ format_list ;


 int FORMAT_COUNT ;
 int FORMAT_SET_COUNT ;
 int PNG_FORMAT_FLAG_AFIRST ;
 int PNG_FORMAT_FLAG_ALPHA ;
 int PNG_FORMAT_FLAG_BGR ;
 int PNG_FORMAT_FLAG_COLOR ;
 int format_set (TYPE_1__*,int) ;

__attribute__((used)) static void format_default(format_list *pf, int redundant)
{
   if (redundant)
   {
      int i;


      for (i=0; i<FORMAT_SET_COUNT; ++i)
         pf->bits[i] = ~(png_uint_32)0;
   }

   else
   {
      png_uint_32 f;

      for (f=0; f<FORMAT_COUNT; ++f)
      {






            if ((f & 0x10U ) != 0)

            continue;






            if ((f & 0x20U ) != 0)

            continue;

         format_set(pf, f);
      }
   }
}
