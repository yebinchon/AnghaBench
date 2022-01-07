
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* MakeMovieStateName (char const*) ;
 int YabLoadStateStream (int *) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;

int YabLoadState(const char *filename)
{
   FILE *fp;
   int status;

   filename = MakeMovieStateName(filename);
   if (!filename)
      return -1;

   if ((fp = fopen(filename, "rb")) == ((void*)0))
      return -1;

   status = YabLoadStateStream(fp);
   fclose(fp);

   return status;
}
