
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_const_structp ;



 int PNG_INTERLACE_ADAM7_PASSES ;

 int png_error (int ,char*) ;

__attribute__((used)) static int
npasses_from_interlace_type(png_const_structp pp, int interlace_type)
{
   switch (interlace_type)
   {
   default:
      png_error(pp, "invalid interlace type");

   case 128:
      return 1;

   case 129:
      return PNG_INTERLACE_ADAM7_PASSES;
   }
}
