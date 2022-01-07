
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



inline float u32_to_float(uint32 u) {
 union {
  uint32 a;
  float b;
 } fuxor;
 fuxor.a = u;
 return fuxor.b;
}
