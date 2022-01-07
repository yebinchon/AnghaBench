
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ AV_RB32 (int *) ;

__attribute__((used)) static uint8_t *apng_find_chunk(uint32_t tag, uint8_t *buf, size_t length)
{
    size_t b;
    for (b = 0; b < length; b += AV_RB32(buf + b) + 12)
        if (AV_RB32(&buf[b + 4]) == tag)
            return &buf[b];
    return ((void*)0);
}
