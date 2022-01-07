
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* png_const_charp ;
typedef char* png_charp ;


 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static int
find_parameters(png_const_charp what, png_charp param, png_charp *list,
   int nparams)
{



   int i;
   for (i=0; *param && i<nparams; ++i)
   {
      list[i] = param;
      while (*++param) if (*param == '\n' || *param == ':')
      {
         *param++ = 0;
         break;
      }
   }

   if (*param)
   {
      fprintf(stderr, "--insert %s: too many parameters (%s)\n", what, param);
      exit(1);
   }

   list[i] = ((void*)0);
   return i;
}
