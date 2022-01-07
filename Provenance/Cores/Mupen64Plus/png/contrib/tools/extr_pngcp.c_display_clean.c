
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {scalar_t__ results; int * text_ptr; scalar_t__ num_text; scalar_t__ text_stashed; int * output_file; } ;


 int display_clean_read (struct display*) ;
 int display_clean_write (struct display*) ;
 int free (int *) ;

__attribute__((used)) static void
display_clean(struct display *dp)
{
   display_clean_read(dp);
   display_clean_write(dp);
   dp->output_file = ((void*)0);
   dp->results = 0;
}
