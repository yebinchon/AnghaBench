
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
struct List {int nitems; int tail; } ;


 struct List* List_Alloc (struct List*) ;
 int List_Link (struct List*,struct List*,int ,int *) ;
 int assign (struct List*,struct List*) ;

__attribute__((used)) static void List_Push(var self, var obj) {
  struct List* l = self;
  var item = List_Alloc(l);
  assign(item, obj);
  List_Link(l, item, l->tail, ((void*)0));
  l->nitems++;
}
