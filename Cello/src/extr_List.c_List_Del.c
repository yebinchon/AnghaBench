
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
struct List {int dummy; } ;


 int List_Clear (struct List*) ;

__attribute__((used)) static void List_Del(var self) {
  struct List* l = self;
  List_Clear(self);
}
