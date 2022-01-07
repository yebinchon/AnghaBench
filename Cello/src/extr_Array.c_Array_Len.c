
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Array* var ;
struct Array {size_t nitems; } ;



__attribute__((used)) static size_t Array_Len(var self) {
  struct Array* a = self;
  return a->nitems;
}
