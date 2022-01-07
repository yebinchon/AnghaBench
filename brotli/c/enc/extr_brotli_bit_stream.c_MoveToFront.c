
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void MoveToFront(uint8_t* v, size_t index) {
  uint8_t value = v[index];
  size_t i;
  for (i = index; i != 0; --i) {
    v[i] = v[i - 1];
  }
  v[0] = value;
}
