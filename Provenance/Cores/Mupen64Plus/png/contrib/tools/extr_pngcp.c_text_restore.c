
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int num_text; int * text_ptr; int ip; int write_pp; } ;


 int png_set_text (int ,int ,int *,int ) ;

__attribute__((used)) static void
text_restore(struct display *dp)
{

   if (dp->text_ptr != ((void*)0))
      png_set_text(dp->write_pp, dp->ip, dp->text_ptr, dp->num_text);
}
