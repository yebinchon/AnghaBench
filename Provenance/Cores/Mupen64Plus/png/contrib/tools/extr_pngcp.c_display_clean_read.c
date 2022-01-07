
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int * fp; int * read_pp; } ;
typedef int FILE ;


 int fclose (int *) ;
 int png_destroy_read_struct (int **,int *,int *) ;

__attribute__((used)) static void
display_clean_read(struct display *dp)
{
   if (dp->read_pp != ((void*)0))
      png_destroy_read_struct(&dp->read_pp, ((void*)0), ((void*)0));

   if (dp->fp != ((void*)0))
   {
      FILE *fp = dp->fp;
      dp->fp = ((void*)0);
      (void)fclose(fp);
   }
}
