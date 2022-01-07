
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcc_magazine {int dummy; } ;



void zcache_swap_magazines(struct zcc_magazine **a, struct zcc_magazine **b)
{
 struct zcc_magazine *temp = *a;
 *a = *b;
 *b = temp;
}
