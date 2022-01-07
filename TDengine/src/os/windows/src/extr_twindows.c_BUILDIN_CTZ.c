
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int _BitScanForward (unsigned long*,int ) ;

int32_t BUILDIN_CTZ(uint32_t val) {
  unsigned long r = 0;
  _BitScanForward(&r, val);
  return (int)(r >> 3);
}
