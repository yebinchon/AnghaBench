
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONT_DATA_LEN ;
 int SRAND_SEED ;
 int ets_printf (char*,int ) ;
 void* rx_done ;
 int srand (int ) ;
 void* tasks_done ;
 void* tx_done ;
 void* xSemaphoreCreateBinary () ;

__attribute__((used)) static void setup(void)
{
    ets_printf("Size of test data: %d\n", CONT_DATA_LEN);
    tx_done = xSemaphoreCreateBinary();
    rx_done = xSemaphoreCreateBinary();
    tasks_done = xSemaphoreCreateBinary();
    srand(SRAND_SEED);
}
