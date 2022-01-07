
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*) ;
 int path (char*) ;
 int perror (int ) ;
 int pseudo_inits (int *) ;
 int unlink (int ) ;

void
mkioconf(void)
{
 FILE *fp;

 unlink(path("ioconf.c"));
 fp = fopen(path("ioconf.c"), "w");
 if (fp == 0) {
  perror(path("ioconf.c"));
  exit(1);
 }
 fprintf(fp, "#include <dev/busvar.h>\n");
 fprintf(fp, "\n");
 pseudo_inits (fp);
 (void) fclose(fp);
}
