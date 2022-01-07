
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var ;
struct Tree {int dummy; } ;



__attribute__((used)) static var Tree_Get_Parent(struct Tree* m, var node) {
  var ptr = *(var*)((char*)node + 2 * sizeof(var));
  return (var)(((uintptr_t)ptr) & (~1));
}
