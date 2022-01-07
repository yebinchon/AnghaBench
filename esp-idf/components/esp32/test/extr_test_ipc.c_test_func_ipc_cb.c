
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vTaskDelay (int) ;

__attribute__((used)) static void test_func_ipc_cb(void *arg)
{
    vTaskDelay(50);
    int *val = (int *)arg;
    *val = 0xa5a5;
}
