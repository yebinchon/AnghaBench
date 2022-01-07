
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
struct List {int dummy; } ;


 struct List* List_At (struct List*,int ) ;
 int c_int (struct List*) ;

__attribute__((used)) static var List_Get(var self, var key) {
  struct List* l = self;
  return List_At(l, c_int(key));
}
