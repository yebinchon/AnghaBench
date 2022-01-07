
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Tuple* var ;
struct Tuple {struct Tuple** items; } ;



__attribute__((used)) static var Tuple_Iter_Init(var self) {
  struct Tuple* t = self;
  return t->items[0];
}
