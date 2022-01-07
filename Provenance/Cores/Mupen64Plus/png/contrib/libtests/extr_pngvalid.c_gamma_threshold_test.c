
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_modifier ;
typedef int png_byte ;


 int gamma_test (int *,int ,int ,int ,int,double,double,int ,int,char*,int ,int ,int ,int ,int ,int ) ;
 size_t safecat (char*,int,size_t,char*) ;
 size_t safecatd (char*,int,size_t,double,int) ;

__attribute__((used)) static void gamma_threshold_test(png_modifier *pm, png_byte colour_type,
    png_byte bit_depth, int interlace_type, double file_gamma,
    double screen_gamma)
{
   size_t pos = 0;
   char name[64];
   pos = safecat(name, sizeof name, pos, "threshold ");
   pos = safecatd(name, sizeof name, pos, file_gamma, 3);
   pos = safecat(name, sizeof name, pos, "/");
   pos = safecatd(name, sizeof name, pos, screen_gamma, 3);

   (void)gamma_test(pm, colour_type, bit_depth, 0 , interlace_type,
      file_gamma, screen_gamma, 0 , 1 , name,
      0 ,
      0 , 0 , 0 , 0 ,
      0 );
}
