
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
struct List {int dummy; } ;


 int List_At (struct List*,int ) ;
 int assign (int ,struct List*) ;
 int c_int (struct List*) ;

__attribute__((used)) static void List_Set(var self, var key, var val) {
  struct List* l = self;
  assign(List_At(l, c_int(key)), val);
}
