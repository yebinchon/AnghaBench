
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct Table {size_t ksize; size_t vsize; } ;
struct Header {int dummy; } ;



__attribute__((used)) static size_t Table_Step(struct Table* t) {
  return
    sizeof(uint64_t) +
    sizeof(struct Header) + t->ksize +
    sizeof(struct Header) + t->vsize;
}
