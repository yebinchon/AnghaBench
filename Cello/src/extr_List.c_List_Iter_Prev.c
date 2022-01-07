
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
struct List {int dummy; } ;


 struct List** List_Prev (struct List*,struct List*) ;
 struct List* Terminal ;

__attribute__((used)) static var List_Iter_Prev(var self, var curr) {
  struct List* l = self;
  curr = *List_Prev(l, curr);
  return curr ? curr : Terminal;
}
