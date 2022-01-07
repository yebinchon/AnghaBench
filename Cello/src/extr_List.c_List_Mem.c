
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
struct List {struct List* head; } ;


 struct List** List_Next (struct List*,struct List*) ;
 scalar_t__ eq (struct List*,struct List*) ;

__attribute__((used)) static bool List_Mem(var self, var obj) {
  struct List* l = self;
  var item = l->head;
  while (item) {
    if (eq(item, obj)) { return 1; }
    item = *List_Next(l, item);
  }
  return 0;
}
