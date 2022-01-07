
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coal_sort_s {int usr_order; } ;



__attribute__((used)) static int usr_dec_cmp(const void *a, const void *b)
{
 const struct coal_sort_s *csA = (const struct coal_sort_s *)a;
 const struct coal_sort_s *csB = (const struct coal_sort_s *)b;

 return (csB->usr_order - csA->usr_order);
}
