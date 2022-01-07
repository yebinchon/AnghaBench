
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_uint_32 ;
struct TYPE_4__ {int use_update_info; int this; } ;
typedef TYPE_1__ png_modifier ;
typedef int png_byte ;


 int DEPTH (int) ;
 int FILEID (int const,int ,int ,int ,int,int,int) ;
 int PNG_INTERLACE_ADAM7 ;
 int PNG_INTERLACE_NONE ;
 scalar_t__ fail (TYPE_1__* const) ;
 int standard_test (int *,int ,int,int ) ;

__attribute__((used)) static int
test_size(png_modifier* const pm, png_byte const colour_type,
    int bdlo, int const bdhi)
{







   static const png_byte hinc[] = {1, 3, 11, 1, 5};
   static const png_byte winc[] = {1, 9, 5, 7, 1};
   const int save_bdlo = bdlo;

   for (; bdlo <= bdhi; ++bdlo)
   {
      png_uint_32 h, w;

      for (h=1; h<=16; h+=hinc[bdlo]) for (w=1; w<=16; w+=winc[bdlo])
      {





         standard_test(&pm->this, FILEID(colour_type, DEPTH(bdlo), 0 ,
            PNG_INTERLACE_NONE, w, h, 0), 0 ,
            pm->use_update_info);

         if (fail(pm))
            return 0;

         standard_test(&pm->this, FILEID(colour_type, DEPTH(bdlo), 0 ,
            PNG_INTERLACE_NONE, w, h, 1), 0 ,
            pm->use_update_info);

         if (fail(pm))
            return 0;





         standard_test(&pm->this, FILEID(colour_type, DEPTH(bdlo), 0 ,
            PNG_INTERLACE_NONE, w, h, 0), 1 ,
            pm->use_update_info);

         if (fail(pm))
            return 0;
      }
   }




   for (bdlo = save_bdlo; bdlo <= bdhi; ++bdlo)
   {
      png_uint_32 h, w;

      for (h=1; h<=16; h+=hinc[bdlo]) for (w=1; w<=16; w+=winc[bdlo])
      {
      }
   }

   return 1;
}
