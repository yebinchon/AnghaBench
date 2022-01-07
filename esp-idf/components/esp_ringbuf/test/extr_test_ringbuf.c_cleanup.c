
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rx_done ;
 int tasks_done ;
 int tx_done ;
 int vSemaphoreDelete (int ) ;

__attribute__((used)) static void cleanup(void)
{

    vSemaphoreDelete(tx_done);
    vSemaphoreDelete(rx_done);
    vSemaphoreDelete(tasks_done);
}
