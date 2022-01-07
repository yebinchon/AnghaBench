
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int free (char*) ;
 char* malloc (size_t) ;
 size_t wcstombs (char*,int const*,size_t) ;

__attribute__((used)) static char * wcsdupstr(const wchar_t * path)
{
   char * mbs;
   size_t len = wcstombs(((void*)0), path, 0);
   if (len == (size_t) -1) return ((void*)0);

   mbs = malloc(len);
   len = wcstombs(mbs, path, len);
   if (len == (size_t) -1)
   {
      free(mbs);
      return ((void*)0);
   }

   return mbs;
}
