
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFSIZ ;
 int VPATH ;
 char* config_directory ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopenp (int ,char*,char*,char*) ;
 int fprintf (int *,char*) ;
 int fputs (char*,int *) ;
 char* machinename ;
 int perror (char*) ;
 scalar_t__ profiling ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

void
do_machdep(FILE *ofp)
{
 FILE *ifp;
 char pname[BUFSIZ];
 char line[BUFSIZ];

 (void) sprintf(line, "%s/Makefile.%s", config_directory, machinename);
 ifp = fopenp(VPATH, line, pname, "r");
 if (ifp == 0) {
  perror(line);
  exit(1);
 }
 while (fgets(line, BUFSIZ, ifp) != 0) {
  if (profiling && (strncmp(line, "LIBS=", 5) == 0))
   fprintf(ofp,"LIBS=${LIBS_P}\n");
  else
   fputs(line, ofp);
 }
 fclose(ifp);
}
