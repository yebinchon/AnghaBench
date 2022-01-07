
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Tuple* var ;
typedef int uint64_t ;
struct Tuple {int * items; } ;


 size_t Tuple_Len (struct Tuple*) ;
 int hash (int ) ;

__attribute__((used)) static uint64_t Tuple_Hash(var self) {
  struct Tuple* t = self;
  uint64_t h = 0;

  size_t n = Tuple_Len(self);
  for (size_t i = 0; i < n; i++) {
    h ^= hash(t->items[i]);
  }

  return h;
}
