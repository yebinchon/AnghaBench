
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ int32_t ;


 int PI_SEED ;
 int rand () ;
 int srand (unsigned int) ;
 int time (int *) ;

int32_t mz_os_rand(uint8_t *buf, int32_t size)
{
    static unsigned calls = 0;
    int32_t i = 0;


    if (++calls == 1)
    {

        srand((unsigned)(time(((void*)0)) ^ 3141592654UL));
    }

    while (i < size)
        buf[i++] = (rand() >> 7) & 0xff;

    return size;
}
