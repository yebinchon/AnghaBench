
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_structp ;
typedef int FILE ;


 int fclose (int *) ;
 int feof (int *) ;
 int fgetc (int *) ;
 int * fopen (char*,char*) ;
 int memset (char*,int ,int) ;
 int png_warning (int ,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
png_have_msa(png_structp png_ptr)
{
   FILE *f = fopen("/proc/cpuinfo", "rb");

   char *string = "msa";
   char word[10];

   if (f != ((void*)0))
   {
      while(!feof(f))
      {
         int ch = fgetc(f);
         static int i = 0;

         while(!(ch <= 32))
         {
            word[i++] = ch;
            ch = fgetc(f);
         }

         int val = strcmp(string, word);

         if (val == 0)
            return 1;

         i = 0;
         memset(word, 0, 10);
      }

      fclose(f);
   }




   return 0;
}
