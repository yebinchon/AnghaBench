
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;



inline uint64 double_to_u64(double d) {
 union {
  uint64 a;
  double b;
 } fuxor;
 fuxor.b = d;
 return fuxor.a;
}
