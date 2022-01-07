
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int compression; int * lang_key; int * lang; scalar_t__ itxt_length; scalar_t__ text_length; int * text; int key; } ;
typedef TYPE_1__ png_text ;
typedef int png_charp ;



__attribute__((used)) static void
clear_text(png_text *text, png_charp keyword)
{
   text->compression = -1;
   text->key = keyword;
   text->text = ((void*)0);
   text->text_length = 0;
   text->itxt_length = 0;
   text->lang = ((void*)0);
   text->lang_key = ((void*)0);
}
