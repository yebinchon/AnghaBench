
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

int _assert(char *e, char *file, int line) {
 fprintf(stderr, "assertion failed:");
 if (e)
  fprintf(stderr, " %s", e);
 if (file)
  fprintf(stderr, " file %s", file);
 fprintf(stderr, " line %d\n", line);
 fflush(stderr);
 abort();
 return 0;
}
