
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



uint64_t taosHashUInt64(uint64_t handle) {
  uint64_t hash = handle >> 16;
  hash += handle & 0xFFFF;
  return hash;
}
