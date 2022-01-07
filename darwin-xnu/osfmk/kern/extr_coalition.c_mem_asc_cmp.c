
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coal_sort_s {scalar_t__ bytes; } ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static int mem_asc_cmp(const void *a, const void *b)
{
 const struct coal_sort_s *csA = (const struct coal_sort_s *)a;
 const struct coal_sort_s *csB = (const struct coal_sort_s *)b;

 return (int)((int64_t)csA->bytes - (int64_t)csB->bytes);
}
