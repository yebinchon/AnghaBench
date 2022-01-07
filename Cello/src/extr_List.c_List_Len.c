
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct List* var ;
struct List {size_t nitems; } ;



__attribute__((used)) static size_t List_Len(var self) {
  struct List* l = self;
  return l->nitems;
}
