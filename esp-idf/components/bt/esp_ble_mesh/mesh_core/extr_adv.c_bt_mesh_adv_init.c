
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_mesh_msg_t ;


 int ADV_TASK_CORE ;
 int BLE_MESH_QUEUE_SET_SIZE ;
 int BLE_MESH_QUEUE_SIZE ;
 int BLE_MESH_RELAY_QUEUE_SIZE ;
 int adv_thread ;
 int configASSERT (int) ;
 scalar_t__ configMAX_PRIORITIES ;
 int pdTRUE ;
 int xBleMeshQueue ;
 int xBleMeshQueueSet ;
 int xBleMeshRelayQueue ;
 int xQueueAddToSet (int,int) ;
 int xQueueCreate (int ,int) ;
 int xQueueCreateSet (int ) ;
 int xTaskCreatePinnedToCore (int ,char*,int,int *,scalar_t__,int *,int ) ;

void bt_mesh_adv_init(void)
{
    xBleMeshQueue = xQueueCreate(BLE_MESH_QUEUE_SIZE, sizeof(bt_mesh_msg_t));
    configASSERT(xBleMeshQueue);
    int ret = xTaskCreatePinnedToCore(adv_thread, "BLE_Mesh_ADV_Task", 3072, ((void*)0),
                                      configMAX_PRIORITIES - 7, ((void*)0), ADV_TASK_CORE);
    configASSERT(ret == pdTRUE);
}
