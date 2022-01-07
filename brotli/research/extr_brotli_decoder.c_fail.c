
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Context ;


 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

void fail(Context* ctx, const char* message) {
  fprintf(stderr, "%s\n", message);
  exit(1);
}
