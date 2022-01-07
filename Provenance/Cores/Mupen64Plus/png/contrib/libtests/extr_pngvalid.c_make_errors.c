
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int this; } ;
typedef TYPE_1__ png_modifier ;
typedef int png_byte ;


 unsigned int ARRAY_SIZE (int ) ;
 int DEPTH (int) ;
 int FILE_NAME_SIZE ;
 int INTERLACE_LAST ;
 int PNG_INTERLACE_NONE ;
 int do_own_interlace ;
 int error_test ;
 scalar_t__ fail (TYPE_1__* const) ;
 int make_error (int *,int const,int ,int,unsigned int,char*) ;
 int standard_name (char*,int,int ,int const,int,int ,int,int ,int ,int ) ;

__attribute__((used)) static int
make_errors(png_modifier* const pm, png_byte const colour_type,
    int bdlo, int const bdhi)
{
   for (; bdlo <= bdhi; ++bdlo)
   {
      int interlace_type;

      for (interlace_type = PNG_INTERLACE_NONE;
           interlace_type < INTERLACE_LAST; ++interlace_type)
      {
         unsigned int test;
         char name[FILE_NAME_SIZE];

         standard_name(name, sizeof name, 0, colour_type, 1<<bdlo, 0,
            interlace_type, 0, 0, do_own_interlace);

         for (test=0; test<ARRAY_SIZE(error_test); ++test)
         {
            make_error(&pm->this, colour_type, DEPTH(bdlo), interlace_type,
               test, name);

            if (fail(pm))
               return 0;
         }
      }
   }

   return 1;
}
