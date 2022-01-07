
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
struct List {scalar_t__ nitems; struct List* head; int * tail; } ;


 int List_Free (struct List*,struct List*) ;
 struct List** List_Next (struct List*,struct List*) ;
 int destruct (struct List*) ;

__attribute__((used)) static void List_Clear(var self) {
  struct List* l = self;
  var item = l->head;
  while (item) {
    var next = *List_Next(l, item);
   destruct(item);
    List_Free(l, item);
    item = next;
  }
  l->tail = ((void*)0);
  l->head = ((void*)0);
  l->nitems = 0;
}
