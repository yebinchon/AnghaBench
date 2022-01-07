
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FB2ADDR ;
 int volatile ctr ;
 int volatile lock ;
 int rand () ;
 int state ;
 scalar_t__ test_s32c1i_lock ;

__attribute__((used)) static void tskTwo(void *pvParameters)
{
    int x;
    int *p = (int *)FB2ADDR;
    int *s = (int *)test_s32c1i_lock;
    void (*test_s32c1i_lock2)(volatile int * lockvar, int lockval, int unlockval, volatile int * ctr) = (void *)FB2ADDR;
    volatile int w;
    int delay;
    for (x = 0; x < 100; x++) {
        *p++ = *s++;
    }

    while (1) {
        while (state != 1) ;
        for (x = 0; x < 16 * 1024; x++) {
            test_s32c1i_lock2(&lock, 2, 0, &ctr);

            if ((x & 0x1f) == 0) {
                delay = rand() & 0x1f;
                for (w = 0; w < delay; w++);
            }
        }
        while (state != 2);
    }
}
