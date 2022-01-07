
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



inline uint32 float_to_u32(float f) {
 union {
  uint32 a;
  float b;
 } fuxor;
 fuxor.b = f;
 return fuxor.a;
}
