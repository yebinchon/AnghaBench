
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmd ;
 int * db ;
 int free (int *) ;
 int is_connect ;
 scalar_t__ notify_value_count ;
 scalar_t__ notify_value_offset ;
 int * notify_value_p ;
 scalar_t__ spp_conn_id ;
 int spp_gattc_if ;
 int spp_mtu_size ;
 scalar_t__ spp_srv_end_handle ;
 scalar_t__ spp_srv_start_handle ;

__attribute__((used)) static void free_gattc_srv_db(void)
{
    is_connect = 0;
    spp_gattc_if = 0xff;
    spp_conn_id = 0;
    spp_mtu_size = 23;
    cmd = 0;
    spp_srv_start_handle = 0;
    spp_srv_end_handle = 0;
    notify_value_p = ((void*)0);
    notify_value_offset = 0;
    notify_value_count = 0;
    if(db){
        free(db);
        db = ((void*)0);
    }
}
