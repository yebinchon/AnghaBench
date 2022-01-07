
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Table* var ;
struct Table {struct Table* vtype; } ;



__attribute__((used)) static var Table_Val_Type(var self) {
  struct Table* t = self;
  return t->vtype;
}
