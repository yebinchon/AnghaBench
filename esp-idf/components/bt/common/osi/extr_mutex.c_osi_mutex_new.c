
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * osi_mutex_t ;


 int * xSemaphoreCreateMutex () ;

int osi_mutex_new(osi_mutex_t *mutex)
{
    int xReturn = -1;

    *mutex = xSemaphoreCreateMutex();

    if (*mutex != ((void*)0)) {
        xReturn = 0;
    }

    return xReturn;
}
