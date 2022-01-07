
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct init_list_entry {scalar_t__ next; scalar_t__ func; } ;
typedef scalar_t__ net_init_func_ptr ;
typedef int errno_t ;


 int EALREADY ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ LIST_RAN ;
 int OSCompareAndSwapPtr (scalar_t__,struct init_list_entry*,scalar_t__*) ;
 int bzero (struct init_list_entry*,int) ;
 struct init_list_entry* kalloc (int) ;
 int kfree (struct init_list_entry*,int) ;
 scalar_t__ list_head ;
 int printf (char*) ;

errno_t
net_init_add(
 net_init_func_ptr init_func)
{
 struct init_list_entry *entry;

 if (init_func == 0) {
  return EINVAL;
 }


 if (list_head == LIST_RAN) {
  return EALREADY;
 }

 entry = kalloc(sizeof(*entry));
 if (entry == 0) {
  printf("net_init_add: no memory\n");
  return ENOMEM;
 }

 bzero(entry, sizeof(*entry));
 entry->func = init_func;

 do {
  entry->next = list_head;

  if (entry->next == LIST_RAN) {

   kfree(entry, sizeof(*entry));
   return EALREADY;
  }
 } while(!OSCompareAndSwapPtr(entry->next, entry, &list_head));

 return 0;
}
