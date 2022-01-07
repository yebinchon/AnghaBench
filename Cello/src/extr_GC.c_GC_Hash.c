
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var ;
typedef uintptr_t uint64_t ;



__attribute__((used)) static uint64_t GC_Hash(var ptr) {
  return ((uintptr_t)ptr) >> 3;
}
