
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Tree* var ;
struct Tree {struct Tree* ktype; } ;



__attribute__((used)) static var Tree_Iter_Type(var self) {
  struct Tree* m = self;
  return m->ktype;
}
