
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
typedef TYPE_1__ ptov_table_entry ;



__attribute__((used)) static int
cmp_ptov_entries(const void *a, const void *b)
{
 const ptov_table_entry *entry_a = a;
 const ptov_table_entry *entry_b = b;

 if (entry_a->len < entry_b->len)
  return 1;
 else if (entry_a->len > entry_b->len)
  return -1;
 else
  return 0;
}
