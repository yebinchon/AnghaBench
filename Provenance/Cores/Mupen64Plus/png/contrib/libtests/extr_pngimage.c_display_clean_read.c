
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int read_ip; int * read_pp; } ;


 int png_destroy_read_struct (int **,int *,int *) ;

__attribute__((used)) static void
display_clean_read(struct display *dp)
{
   if (dp->read_pp != ((void*)0))
      png_destroy_read_struct(&dp->read_pp, &dp->read_ip, ((void*)0));
}
