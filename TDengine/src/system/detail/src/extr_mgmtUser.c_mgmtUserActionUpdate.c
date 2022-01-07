
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* mgmtUserActionReset (void*,char*,int,int*) ;

void *mgmtUserActionUpdate(void *row, char *str, int size, int *ssize) {
  return mgmtUserActionReset(row, str, size, ssize);
}
