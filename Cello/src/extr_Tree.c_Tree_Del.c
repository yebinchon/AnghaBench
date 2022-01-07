
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Tree* var ;
struct Tree {int dummy; } ;


 int Tree_Clear (struct Tree*) ;

__attribute__((used)) static void Tree_Del(var self) {
  struct Tree* m = self;
  Tree_Clear(self);
}
