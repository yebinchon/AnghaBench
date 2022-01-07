
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 scalar_t__ sprot_item_alloc ;
 scalar_t__ sprot_item_count ;
 int * sprot_items ;

__attribute__((used)) static void carthw_sprot_unload(void)
{
  free(sprot_items);
  sprot_items = ((void*)0);
  sprot_item_count = sprot_item_alloc = 0;
}
