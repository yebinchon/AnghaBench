
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blink_task ;
 int xTaskCreatePinnedToCore (int *,char*,int,int *,int,int *,int ) ;

void app_main(void)
{
    xTaskCreatePinnedToCore(&blink_task, "blink_task", 2048, ((void*)0), 5, ((void*)0), 0);
}
