
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
struct List {struct List* head; } ;


 struct List** List_Next (struct List*,struct List*) ;
 int print_to (struct List*,int,char*,...) ;

__attribute__((used)) static int List_Show(var self, var output, int pos) {
  struct List* l = self;
  pos = print_to(output, pos, "<'List' At 0x%p [", self);
  var item = l->head;
  while (item) {
    pos = print_to(output, pos, "%$", item);
    item = *List_Next(l, item);
    if (item) { pos = print_to(output, pos, ", "); }
  }
  return print_to(output, pos, "]>");
}
