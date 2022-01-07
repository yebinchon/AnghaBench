
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FILE ;


 int * fopen (char*,char*) ;
 int free (char*) ;
 char* wcsdupstr (int const*) ;

__attribute__((used)) static FILE * _wfopen(const wchar_t *wpath, const wchar_t *wmode)
{
   FILE * fd;
   char * path;
   char * mode;

   path = wcsdupstr(wpath);
   if (path == ((void*)0)) return ((void*)0);

   mode = wcsdupstr(wmode);
   if (mode == ((void*)0))
   {
      free(path);
      return ((void*)0);
   }

   fd = fopen(path, mode);

   free(path);
   free(mode);

   return fd;
}
