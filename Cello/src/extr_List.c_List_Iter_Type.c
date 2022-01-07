
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
struct List {struct List* type; } ;



__attribute__((used)) static var List_Iter_Type(var self) {
  struct List* l = self;
  return l->type;
}
