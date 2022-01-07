
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool data_in_segment(void *ptr, int *seg_start, int *seg_end)
{
    return ((intptr_t)ptr < (intptr_t)seg_end) && ((intptr_t)ptr >= (intptr_t)seg_start);

}
