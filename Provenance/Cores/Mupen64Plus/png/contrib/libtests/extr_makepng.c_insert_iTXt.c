
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int compression; void* lang_key; void* lang; } ;
typedef TYPE_1__ png_text ;
typedef int png_structp ;
typedef int png_infop ;
typedef void** png_charpp ;


 int check_param_count (int,int) ;
 int clear_text (TYPE_1__*,void*) ;
 int set_text (int ,int ,TYPE_1__*,void*) ;

__attribute__((used)) static void
insert_iTXt(png_structp png_ptr, png_infop info_ptr, int nparams,
   png_charpp params)
{
   png_text text;

   check_param_count(nparams, 4);
   clear_text(&text, params[0]);
   text.compression = 2;
   text.lang = params[1];
   text.lang_key = params[2];
   set_text(png_ptr, info_ptr, &text, params[3]);
}
