
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE_AND_RESET (int ) ;
 int btu_cb_ptr ;
 int * btu_general_alarm_hash_map ;
 int btu_general_alarm_lock ;
 int * btu_l2cap_alarm_hash_map ;
 int btu_l2cap_alarm_lock ;
 int * btu_oneshot_alarm_hash_map ;
 int btu_oneshot_alarm_lock ;
 int btu_task_shut_down () ;
 int * btu_thread ;
 int hash_map_free (int *) ;
 int osi_mutex_free (int *) ;
 int osi_thread_free (int *) ;

void BTU_ShutDown(void)
{



    btu_task_shut_down();

    hash_map_free(btu_general_alarm_hash_map);
    osi_mutex_free(&btu_general_alarm_lock);

    hash_map_free(btu_oneshot_alarm_hash_map);
    osi_mutex_free(&btu_oneshot_alarm_lock);

    hash_map_free(btu_l2cap_alarm_hash_map);
    osi_mutex_free(&btu_l2cap_alarm_lock);

    if (btu_thread) {
        osi_thread_free(btu_thread);
        btu_thread = ((void*)0);
    }

    btu_general_alarm_hash_map = ((void*)0);
    btu_oneshot_alarm_hash_map = ((void*)0);
    btu_l2cap_alarm_hash_map = ((void*)0);
}
