
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int QueueHandle_t ;


 int CCOUNT ;
 int RSR (int ,int ) ;
 int flag ;
 int trigger ;
 int xQueueSendToBack (int ,int *,int ) ;

__attribute__((used)) static void task_send_to_queue(void *param)
{
    QueueHandle_t queue = (QueueHandle_t) param;
    uint32_t ccount;

    while(!trigger) {}

    RSR(CCOUNT, ccount);
    flag = 1;
    xQueueSendToBack(queue, &ccount, 0);





    while(1) {}
}
