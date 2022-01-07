
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
struct List {int nitems; } ;
typedef int int64_t ;


 struct List* List_At (struct List*,int ) ;
 int List_Free (struct List*,struct List*) ;
 int List_Unlink (struct List*,struct List*) ;
 int c_int (struct List*) ;
 int destruct (struct List*) ;

__attribute__((used)) static void List_Pop_At(var self, var key) {

  struct List* l = self;
  int64_t i = c_int(key);

  var item = List_At(l, i);
  List_Unlink(l, item);
  destruct(item);
  List_Free(l, item);
  l->nitems--;
}
