
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* var ;
struct Tree {int dummy; } ;
struct Header {int dummy; } ;



__attribute__((used)) static var Tree_Key(struct Tree* m, var node) {
  return (char*)node + 3 * sizeof(var) + sizeof(struct Header);
}
