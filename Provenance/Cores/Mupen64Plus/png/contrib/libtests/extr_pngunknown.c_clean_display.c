
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* file; char* test; int * end_ptr; int * info_ptr; int * png_ptr; } ;
typedef TYPE_1__ display ;


 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int png_destroy_read_struct (int **,int **,int **) ;
 int stderr ;

__attribute__((used)) static void
clean_display(display *d)
{
   png_destroy_read_struct(&d->png_ptr, &d->info_ptr, &d->end_ptr);


   if (d->png_ptr != ((void*)0) || d->info_ptr != ((void*)0) || d->end_ptr != ((void*)0))
   {
      fprintf(stderr, "%s(%s): png_destroy_read_struct error\n", d->file,
         d->test);
      exit(1);
   }
}
