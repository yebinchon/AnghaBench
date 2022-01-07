
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arenasize ;
 int initialize_arena_element (int) ;

void initialize_arena(void) {
 for (int i = 0; i < arenasize; i++) {
  initialize_arena_element(i);
 }
}
