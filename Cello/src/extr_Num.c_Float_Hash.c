
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
union interp_cast {int as_int; int as_flt; } ;
typedef int uint64_t ;


 int c_float (int ) ;

__attribute__((used)) static uint64_t Float_Hash(var self) {
  union interp_cast ic;
  ic.as_flt = c_float(self);
  return ic.as_int;
}
