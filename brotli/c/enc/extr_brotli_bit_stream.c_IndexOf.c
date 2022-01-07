
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint8_t ;



__attribute__((used)) static size_t IndexOf(const uint8_t* v, size_t v_size, uint8_t value) {
  size_t i = 0;
  for (; i < v_size; ++i) {
    if (v[i] == value) return i;
  }
  return i;
}
