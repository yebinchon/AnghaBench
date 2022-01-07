
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * gl_mutex ;
 int * xSemaphoreCreateRecursiveMutex () ;

int osi_mutex_global_init(void)
{
    gl_mutex = xSemaphoreCreateRecursiveMutex();
    if (gl_mutex == ((void*)0)) {
        return -1;
    }

    return 0;
}
