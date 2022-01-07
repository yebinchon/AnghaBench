
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_entry_list {int key; } ;


 int strcasecmp (int ,int ) ;

__attribute__((used)) static int config_sort_compare_func(struct config_entry_list *a,
      struct config_entry_list *b)
{
   return (a && b) ? strcasecmp(a->key, b->key) : 0;
}
