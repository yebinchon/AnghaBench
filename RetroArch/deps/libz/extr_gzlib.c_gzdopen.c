
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gzFile ;


 int free (char*) ;
 int * gz_open (char*,int,char const*) ;
 scalar_t__ malloc (int) ;
 int snprintf (char*,int,char*,int) ;
 int sprintf (char*,char*,int) ;

gzFile gzdopen(int fd, const char *mode)
{
   char *path;
   gzFile gz;

   if (fd == -1 || (path = (char *)malloc(7 + 3 * sizeof(int))) == ((void*)0))
      return ((void*)0);

   snprintf(path, 7 + 3 * sizeof(int), "<fd:%d>", fd);



   gz = gz_open(path, fd, mode);
   free(path);
   return gz;
}
