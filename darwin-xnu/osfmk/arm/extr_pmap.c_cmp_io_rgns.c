
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; scalar_t__ len; } ;
typedef TYPE_1__ pmap_io_range_t ;



__attribute__((used)) static int
cmp_io_rgns(const void *a, const void *b)
{
 const pmap_io_range_t *range_a = a;
 const pmap_io_range_t *range_b = b;
 if ((range_b->addr + range_b->len) <= range_a->addr)
  return 1;
 else if ((range_a->addr + range_a->len) <= range_b->addr)
  return -1;
 else
  return 0;
}
