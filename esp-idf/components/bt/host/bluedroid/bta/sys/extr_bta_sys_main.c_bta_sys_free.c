
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE_AND_RESET (int ) ;
 int bta_alarm_hash_map ;
 int bta_alarm_lock ;
 int bta_sys_cb_ptr ;
 int hash_map_free (int ) ;
 int osi_mutex_free (int *) ;

void bta_sys_free(void)
{
    hash_map_free(bta_alarm_hash_map);
    osi_mutex_free(&bta_alarm_lock);



}
