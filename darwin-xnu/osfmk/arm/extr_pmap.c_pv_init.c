
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* PV_ENTRY_NULL ;
 int pv_free_count ;
 void* pv_free_list ;
 int pv_free_list_lock ;
 int pv_kern_free_count ;
 void* pv_kern_free_list ;
 int pv_kern_free_list_lock ;
 int simple_lock_init (int *,int ) ;

__attribute__((used)) static void
pv_init(
 void)
{
 simple_lock_init(&pv_free_list_lock, 0);
 simple_lock_init(&pv_kern_free_list_lock, 0);
 pv_free_list = PV_ENTRY_NULL;
 pv_free_count = 0x0U;
 pv_kern_free_list = PV_ENTRY_NULL;
 pv_kern_free_count = 0x0U;
}
