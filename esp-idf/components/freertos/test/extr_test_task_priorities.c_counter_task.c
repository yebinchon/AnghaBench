
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void counter_task(void *param)
{
    volatile uint32_t *counter = (volatile uint32_t *)param;
    while (1) {
        (*counter)++;
    }
}
