
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;



int ff_startcode_find_candidate_c(const uint8_t *buf, int size)
{
    int i = 0;
    for (; i < size; i++)
        if (!buf[i])
            break;
    return i;
}
