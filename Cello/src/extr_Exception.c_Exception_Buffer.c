
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Exception {int depth; int ** buffers; } ;
typedef int jmp_buf ;


 int abort () ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static jmp_buf* Exception_Buffer(struct Exception* e) {
  if (e->depth == 0) {
    fprintf(stderr, "Cello Fatal Error: Exception Buffer Out of Bounds!\n");
    abort();
  }
  return e->buffers[e->depth-1];
}
