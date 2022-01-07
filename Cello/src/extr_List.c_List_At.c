
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
struct List {int nitems; int tail; int head; } ;
typedef int int64_t ;


 int $ (int ,int) ;
 int IndexOutOfBoundsError ;
 int Int ;
 int * List_Next (struct List*,int ) ;
 int * List_Prev (struct List*,int ) ;
 int throw (int ,char*,int ,int ) ;

__attribute__((used)) static var List_At(struct List* l, int64_t i) {

  i = i < 0 ? l->nitems+i : i;
  var item;

  if (i <= (int64_t)(l->nitems / 2)) {
    item = l->head;
    while (i) { item = *List_Next(l, item); i--; }
  } else {
    i = l->nitems-i-1;
    item = l->tail;
    while (i) { item = *List_Prev(l, item); i--; }
  }

  return item;
}
