
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct GC {scalar_t__ nslots; } ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static uint64_t GC_Probe(struct GC* gc, uint64_t i, uint64_t h) {
  int64_t v = i - (h-1);
  if (v < 0) {
    v = gc->nslots + v;
  }
  return v;
}
