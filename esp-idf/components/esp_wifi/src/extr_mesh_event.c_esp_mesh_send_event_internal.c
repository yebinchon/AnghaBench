
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_err_t ;


 int MESH_EVENT ;
 int esp_event_post (int ,int ,void*,size_t,int ) ;

esp_err_t esp_mesh_send_event_internal(int32_t event_id, void* event_data, size_t event_data_size)
{
    return esp_event_post(MESH_EVENT, event_id, event_data, event_data_size, 0);
}
