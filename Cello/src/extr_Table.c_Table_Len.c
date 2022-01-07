
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Table* var ;
struct Table {size_t nitems; } ;



__attribute__((used)) static size_t Table_Len(var self) {
  struct Table* t = self;
  return t->nitems;
}
