
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

void _YYnull(char *file, int line) {
 fprintf(stderr, "null pointer dereferenced:");
 if (file)
  fprintf(stderr, " file %s,", file);
 fprintf(stderr, " line %d\n", line);
 fflush(stderr);
 abort();
}
