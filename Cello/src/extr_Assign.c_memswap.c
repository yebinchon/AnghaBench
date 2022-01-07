
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void memswap(void* p0, void* p1, size_t s) {
  if (p0 == p1) { return; }
  for (size_t i = 0; i < s; i++) {
    char t = ((char*)p0)[i];
    ((char*)p0)[i] = ((char*)p1)[i];
    ((char*)p1)[i] = t;
  }
}
