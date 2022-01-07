
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data_free_fn ;


 int BLE_MESH_GENERAL_ALARM_HASH_MAP_SIZE ;
 int assert (int ) ;
 int * bm_alarm_hash_map ;
 int bm_alarm_lock ;
 int bm_irq_lock ;
 int hash_function_pointer ;
 int * hash_map_new (int ,int ,int *,int ,int *) ;
 scalar_t__ osi_alarm_free ;
 int osi_mutex_new (int *) ;

void bt_mesh_k_init(void)
{
    osi_mutex_new(&bm_alarm_lock);
    osi_mutex_new(&bm_irq_lock);
    bm_alarm_hash_map = hash_map_new(BLE_MESH_GENERAL_ALARM_HASH_MAP_SIZE,
                                     hash_function_pointer, ((void*)0),
                                     (data_free_fn)osi_alarm_free, ((void*)0));
    assert(bm_alarm_hash_map != ((void*)0));
}
