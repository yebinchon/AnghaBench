
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* mgmtDbActionReset (void*,char*,int,int*) ;

void *mgmtDbActionUpdate(void *row, char *str, int size, int *ssize) {
  return mgmtDbActionReset(row, str, size, ssize);
}
