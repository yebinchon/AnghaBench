
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 scalar_t__ fclose (int *) ;
 int * fdopen (int,char*) ;
 scalar_t__ ferror (int *) ;
 int * stdout ;

int main (int argc, char* argv[])
{
  const char * tag = (argc > 1 ? argv[1] : "xxx");
  FILE * stdout2 = fdopen(3, "w");
  if (stdout2 == ((void*)0))
    exit(1);
  if (ferror(stdout) || fclose(stdout) || ferror(stdout2) || fclose(stdout2))
    exit(1);
  exit(0);
}
