
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pve_next; } ;
typedef TYPE_1__ pv_entry_t ;


 int pmap_simple_lock (int *) ;
 int pmap_simple_unlock (int *) ;
 int pv_kern_free_count ;
 TYPE_1__* pv_kern_free_list ;
 int pv_kern_free_list_lock ;

__attribute__((used)) static inline void PV_KERN_FREE_LIST(pv_entry_t *pv_eh, pv_entry_t *pv_et, int pv_cnt) {
 pmap_simple_lock(&pv_kern_free_list_lock);
 pv_et->pve_next = pv_kern_free_list;
 pv_kern_free_list = pv_eh;
 pv_kern_free_count += pv_cnt;
 pmap_simple_unlock(&pv_kern_free_list_lock);
}
