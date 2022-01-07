
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var ;


 scalar_t__ Slice_Iter_Init (scalar_t__) ;
 scalar_t__ Slice_Iter_Next (scalar_t__,scalar_t__) ;
 scalar_t__ eq (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool Slice_Mem(var self, var key) {
  var curr = Slice_Iter_Init(self);
  while (curr) {
    if (eq(curr, key)) { return 1; }
    curr = Slice_Iter_Next(self, curr);
  }
  return 0;
}
