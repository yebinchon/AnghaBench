
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fpos_t ;
typedef int FILE ;


 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fgetpos (int *,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fsetpos (int *,int *) ;
 int perror (char*) ;
 scalar_t__ read_png (int *,int,int *) ;
 int stderr ;

__attribute__((used)) static int add_one_file(FILE *fp, char *name)
{
   FILE *ip = fopen(name, "rb");

   if (ip != ((void*)0))
   {



      int ok = 0;
      fpos_t pos;

      if (fgetpos(fp, &pos))
      {

         perror("temporary file");
         fprintf(stderr, "temporary file fgetpos error\n");
         exit(1);
      }

      if (read_png(ip, -1 , fp ))
      {
         if (ferror(ip))
         {
            perror(name);
            fprintf(stderr, "%s: read error\n", name);
         }

         else
            ok = 1;
      }

      else
         fprintf(stderr, "%s: file not added\n", name);

      (void)fclose(ip);


      if (ferror(fp))
      {
         perror("temporary file");
         fprintf(stderr, "temporary file write error\n");
         exit(1);
      }

      if (ok)
         return 1;





      if (fsetpos(fp, &pos))
      {
         perror("temporary file");
         fprintf(stderr, "temporary file fsetpos error\n");
         exit(1);
      }
   }

   else
   {

      perror(name);
      fprintf(stderr, "%s: open failed\n", name);
   }

   return 0;
}
