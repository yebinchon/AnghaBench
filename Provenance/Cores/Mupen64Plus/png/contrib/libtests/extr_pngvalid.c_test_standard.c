
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int use_update_info; int this; } ;
typedef TYPE_1__ png_modifier ;
typedef int png_byte ;


 int DEPTH (int) ;
 int FILEID (int const,int ,int ,int,int ,int ,int ) ;
 int INTERLACE_LAST ;
 int PNG_INTERLACE_NONE ;
 int do_read_interlace ;
 scalar_t__ fail (TYPE_1__* const) ;
 int standard_test (int *,int ,int ,int ) ;

__attribute__((used)) static int
test_standard(png_modifier* const pm, png_byte const colour_type,
    int bdlo, int const bdhi)
{
   for (; bdlo <= bdhi; ++bdlo)
   {
      int interlace_type;

      for (interlace_type = PNG_INTERLACE_NONE;
           interlace_type < INTERLACE_LAST; ++interlace_type)
      {
         standard_test(&pm->this, FILEID(colour_type, DEPTH(bdlo), 0 ,
            interlace_type, 0, 0, 0), do_read_interlace, pm->use_update_info);

         if (fail(pm))
            return 0;
      }
   }

   return 1;
}
