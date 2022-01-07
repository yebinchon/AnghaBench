
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* ps; } ;
typedef TYPE_3__ standard_display ;
typedef int png_uint_32 ;
typedef int * png_textp ;
typedef int png_infop ;
typedef int png_const_structp ;
struct TYPE_6__ {TYPE_1__* current; } ;
struct TYPE_5__ {char* name; } ;


 int png_error (int ,char*) ;
 int png_get_text (int ,int ,int **,int *) ;
 int sprintf (char*,char*,unsigned long) ;
 int standard_check_text (int ,int *,char*,char*) ;

__attribute__((used)) static void
standard_text_validate(standard_display *dp, png_const_structp pp,
   png_infop pi, int check_end)
{
   png_textp tp = ((void*)0);
   png_uint_32 num_text = png_get_text(pp, pi, &tp, ((void*)0));

   if (num_text == 2 && tp != ((void*)0))
   {
      standard_check_text(pp, tp, "image name", dp->ps->current->name);





      if (check_end)
         standard_check_text(pp, tp+1, "end marker", "end");
   }

   else
   {
      char msg[64];

      sprintf(msg, "expected two text items, got %lu",
         (unsigned long)num_text);
      png_error(pp, msg);
   }
}
