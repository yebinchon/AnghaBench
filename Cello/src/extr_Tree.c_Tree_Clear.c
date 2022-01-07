
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Tree* var ;
struct Tree {int * root; scalar_t__ nitems; } ;


 int Tree_Clear_Entry (struct Tree*,int *) ;

__attribute__((used)) static void Tree_Clear(var self) {
  struct Tree* m = self;
  Tree_Clear_Entry(m, m->root);
  m->nitems = 0;
  m->root = ((void*)0);
}
