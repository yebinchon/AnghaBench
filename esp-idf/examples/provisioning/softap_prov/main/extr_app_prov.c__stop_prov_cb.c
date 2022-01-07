
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stop_prov_task ;
 int tskIDLE_PRIORITY ;
 int xTaskCreate (int *,char*,int,int *,int ,int *) ;

__attribute__((used)) static void _stop_prov_cb(void * arg)
{
    xTaskCreate(&stop_prov_task, "stop_prov", 2048, ((void*)0), tskIDLE_PRIORITY, ((void*)0));
}
