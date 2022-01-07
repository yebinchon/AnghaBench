
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Array* var ;
typedef int uint64_t ;
struct Array {size_t nitems; } ;


 int Array_Item (struct Array*,size_t) ;
 int hash (int ) ;

__attribute__((used)) static uint64_t Array_Hash(var self) {
  struct Array* a = self;
  uint64_t h = 0;

  for (size_t i = 0; i < a->nitems; i++) {
    h ^= hash(Array_Item(a, i));
  }

  return h;
}
