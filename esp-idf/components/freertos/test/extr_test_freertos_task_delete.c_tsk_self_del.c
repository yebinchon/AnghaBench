
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vTaskDelete (int *) ;

__attribute__((used)) static void tsk_self_del(void *param)
{
    vTaskDelete(((void*)0));
}
