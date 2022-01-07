
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_queue_send_shall_fail ;

void ForceTaskDelete(void)
{
    g_queue_send_shall_fail = 1;
}
