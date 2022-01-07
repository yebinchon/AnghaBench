
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FILENAME_MAX ;
 int Util_fileexists (char*) ;
 int * fdopen (int ,char const*) ;
 int * fopen (char*,char const*) ;
 int mkstemp (char*) ;
 char* mktemp (char*) ;
 int snprintf (char*,int ,char*,int) ;
 int strcpy (char*,char*) ;
 char* tmpnam (char*) ;

FILE *Util_uniqopen(char *filename, const char *mode)
{
 int no;
 for (no = 0; no < 1000000; no++) {
  snprintf(filename, FILENAME_MAX, "a8%06d", no);
  if (!Util_fileexists(filename))
   return fopen(filename, mode);
 }
 return ((void*)0);

}
