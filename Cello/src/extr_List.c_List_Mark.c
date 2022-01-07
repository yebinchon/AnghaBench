
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* var ;
struct List {void* head; } ;


 void** List_Next (struct List*,void*) ;

__attribute__((used)) static void List_Mark(var self, var gc, void(*f)(var,void*)) {
  struct List* l = self;
  var item = l->head;
  while (item) {
    f(gc, item);
    item = *List_Next(l, item);
  }
}
