
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int * write_pp; } ;


 int png_destroy_write_struct (int **,int *) ;

__attribute__((used)) static void
display_clean_write(struct display *dp)
{
      if (dp->write_pp != ((void*)0))
         png_destroy_write_struct(&dp->write_pp, ((void*)0));
}
