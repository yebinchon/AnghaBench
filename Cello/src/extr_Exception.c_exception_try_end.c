
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Exception {scalar_t__ depth; } ;


 int Exception ;
 int abort () ;
 struct Exception* current (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

void exception_try_end(void) {
  struct Exception* e = current(Exception);
  if (e->depth == 0) {
    fprintf(stderr, "Cello Fatal Error: Exception Buffer Underflow!\n");
    abort();
  }
  e->depth--;
}
