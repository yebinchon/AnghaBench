
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tfree (void*) ;

void *mgmtUserActionDestroy(void *row, char *str, int size, int *ssize) {
  tfree(row);
  return ((void*)0);
}
