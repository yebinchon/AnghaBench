
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
struct List {int nitems; struct List* head; } ;


 int List_Free (struct List*,struct List*) ;
 struct List** List_Next (struct List*,struct List*) ;
 int List_Unlink (struct List*,struct List*) ;
 int ValueError ;
 int destruct (struct List*) ;
 scalar_t__ eq (struct List*,struct List*) ;
 int throw (int ,char*,struct List*) ;

__attribute__((used)) static void List_Rem(var self, var obj) {
  struct List* l = self;
  var item = l->head;
  while (item) {
    if (eq(item, obj)) {
      List_Unlink(l, item);
      destruct(item);
      List_Free(l, item);
      l->nitems--;
      return;
    }
    item = *List_Next(l, item);
  }

  throw(ValueError, "Object %$ not in List!", obj);
}
