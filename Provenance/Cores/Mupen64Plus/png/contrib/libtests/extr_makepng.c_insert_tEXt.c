
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_text ;
typedef int png_structp ;
typedef int png_infop ;
typedef int * png_charpp ;


 int check_param_count (int,int) ;
 int clear_text (int *,int ) ;
 int set_text (int ,int ,int *,int ) ;

__attribute__((used)) static void
insert_tEXt(png_structp png_ptr, png_infop info_ptr, int nparams,
   png_charpp params)
{
   png_text text;

   check_param_count(nparams, 2);
   clear_text(&text, params[0]);
   set_text(png_ptr, info_ptr, &text, params[1]);
}
