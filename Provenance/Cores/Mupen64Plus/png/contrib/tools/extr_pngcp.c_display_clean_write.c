
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {scalar_t__ tsp; int ip; int * write_pp; int * fp; } ;
typedef int FILE ;


 int fclose (int *) ;
 int png_destroy_write_struct (int **,int *) ;

__attribute__((used)) static void
display_clean_write(struct display *dp)
{
   if (dp->fp != ((void*)0))
   {
      FILE *fp = dp->fp;
      dp->fp = ((void*)0);
      (void)fclose(fp);
   }

   if (dp->write_pp != ((void*)0))
      png_destroy_write_struct(&dp->write_pp, dp->tsp > 0 ? ((void*)0) : &dp->ip);
}
