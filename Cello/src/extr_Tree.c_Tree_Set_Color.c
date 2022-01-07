
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var ;
struct Tree {int dummy; } ;


 scalar_t__ Tree_Get_Parent (struct Tree*,scalar_t__) ;

__attribute__((used)) static void Tree_Set_Color(struct Tree* m, var node, bool col) {
  var ptr = Tree_Get_Parent(m, node);
  if (col) {
    *(var*)((char*)node + 2 * sizeof(var)) = (var)(((uintptr_t)ptr) | 1);
  } else {
    *(var*)((char*)node + 2 * sizeof(var)) = ptr;
  }
}
