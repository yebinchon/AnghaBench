
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var ;
struct Tree {int dummy; } ;



__attribute__((used)) static var* Tree_Right(struct Tree* m, var node) {
  return (var*)((char*)node + 1 * sizeof(var));
}
