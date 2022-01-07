
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctr ;
 scalar_t__ lock ;
 int portTICK_PERIOD_MS ;
 int printf (char*,int,int) ;
 int state ;
 int test_s32c1i_lock (scalar_t__*,int,int ,int*) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void tskOne(void *pvParameters)
{
    int x;
    int err = 0, run = 0;
    while (1) {
        ctr = 0; lock = 0;
        state = 1;
        for (x = 0; x < 16 * 1024; x++) {
            test_s32c1i_lock(&lock, 1, 0, &ctr);
        }
        vTaskDelay(60 / portTICK_PERIOD_MS);
        state = 2;
        if (ctr != 16 * 1024 * 2) {
            printf("Lock malfunction detected! Ctr=0x%x instead of %x\n", ctr, 16 * 1024 * 2);
            err++;
        }
        run++;
        printf("Run %d err %d\n", run, err);
        vTaskDelay(20 / portTICK_PERIOD_MS);
    }
}
