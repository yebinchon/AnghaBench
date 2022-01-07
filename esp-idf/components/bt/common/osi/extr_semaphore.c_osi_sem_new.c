
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int * osi_sem_t ;


 int * xSemaphoreCreateCounting (int ,int ) ;

int osi_sem_new(osi_sem_t *sem, uint32_t max_count, uint32_t init_count)
{
    int ret = -1;

    if (sem) {
        *sem = xSemaphoreCreateCounting(max_count, init_count);
        if ((*sem) != ((void*)0)) {
            ret = 0;
        }
    }

    return ret;
}
