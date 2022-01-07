
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * freelist_elements; } ;
typedef TYPE_1__ btlog_t ;
typedef int btlog_element_t ;


 uintptr_t BTLOG_HASHELEMINDEX_NONE ;
 int btlog_evict_elements_from_record (TYPE_1__*,int) ;

btlog_element_t*
btlog_get_elem_from_freelist(btlog_t *btlog)
{
 btlog_element_t *free_elem = ((void*)0);

retry:
 free_elem = btlog->freelist_elements;

 if ((uintptr_t)free_elem == BTLOG_HASHELEMINDEX_NONE) {

  btlog_evict_elements_from_record(btlog, 1);
  goto retry;
 } else {

  uintptr_t next_elem = *(uintptr_t*)free_elem;
  btlog->freelist_elements = (btlog_element_t *)next_elem;
  return free_elem;
 }
}
