
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int SMP_TRACE_DEBUG (char*) ;

void smp_reverse_array(UINT8 *arr, UINT8 len)
{
    UINT8 i = 0, tmp;

    SMP_TRACE_DEBUG("smp_reverse_array\n");

    for (i = 0; i < len / 2; i ++) {
        tmp = arr[i];
        arr[i] = arr[len - 1 - i];
        arr[len - 1 - i] = tmp;
    }
}
