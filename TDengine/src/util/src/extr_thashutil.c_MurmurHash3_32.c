
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int MurmurHash3_32_s (void const*,int,int const,int *) ;

uint32_t MurmurHash3_32(const void *key, int len) {
  const int32_t hashSeed = 0x12345678;

  uint32_t val = 0;
  MurmurHash3_32_s(key, len, hashSeed, &val);

  return val;
}
