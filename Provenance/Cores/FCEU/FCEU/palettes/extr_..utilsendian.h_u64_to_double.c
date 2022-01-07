
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;



inline double u64_to_double(uint64 u) {
 union {
  uint64 a;
  double b;
 } fuxor;
 fuxor.a = u;
 return fuxor.b;
}
