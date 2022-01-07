
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_FAILURE ;
 int assert (int *) ;
 int errlimit ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprint (int ,char*,char*,char*) ;
 int * freopen (char*,char*,int ) ;
 int glevel ;
 char* rcsid ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtol (char*,int *,int ) ;
 int verbose ;
 int wflag ;

void main_init(int argc, char *argv[]) {
 int i;
 static int inited;

 if (inited)
  return;
 inited = 1;
 for (i = 1; i < argc; i++)
  if (strcmp(argv[i], "-g") == 0 || strcmp(argv[i], "-g2") == 0)
   glevel = 2;
  else if (strcmp(argv[i], "-w") == 0)
   wflag++;
  else if (strcmp(argv[i], "-v") == 0) {
   fprint(stderr, "%s %s\n", argv[0], rcsid);
   verbose++;
  } else if (strncmp(argv[i], "-errout=", 8) == 0) {
   FILE *f = fopen(argv[i]+8, "w");
   if (f == ((void*)0)) {
    fprint(stderr, "%s: can't write errors to `%s'\n", argv[0], argv[i]+8);
    exit(EXIT_FAILURE);
   }
   fclose(f);
   f = freopen(argv[i]+8, "w", stderr);
   assert(f);
  } else if (strncmp(argv[i], "-e", 2) == 0) {
   int x;
   if ((x = strtol(&argv[i][2], ((void*)0), 0)) > 0)
    errlimit = x;
  }
}
