
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t atomic_add_fetch_ptr (int *,int) ;
 int nextTimerId ;

__attribute__((used)) static uintptr_t getNextTimerId() {
  uintptr_t id;
  do {
    id = atomic_add_fetch_ptr(&nextTimerId, 1);
  } while (id == 0);
  return id;
}
