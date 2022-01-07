
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
typedef int uint64_t ;
struct List {size_t nitems; struct List* head; } ;


 struct List** List_Next (struct List*,struct List*) ;
 int hash (struct List*) ;

__attribute__((used)) static uint64_t List_Hash(var self) {
  struct List* l = self;
  uint64_t h = 0;

  var item = l->head;
  for (size_t i = 0; i < l->nitems; i++) {
    h ^= hash(item);
    item = *List_Next(l, item);
  }

  return h;
}
