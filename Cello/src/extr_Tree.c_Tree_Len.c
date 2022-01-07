
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Tree* var ;
struct Tree {size_t nitems; } ;



__attribute__((used)) static size_t Tree_Len(var self) {
  struct Tree* m = self;
  return m->nitems;
}
