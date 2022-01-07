
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



const uint8_t *ff_avc_mp4_find_startcode(const uint8_t *start,
                                         const uint8_t *end,
                                         int nal_length_size)
{
    unsigned int res = 0;

    if (end - start < nal_length_size)
        return ((void*)0);
    while (nal_length_size--)
        res = (res << 8) | *start++;

    if (res > end - start)
        return ((void*)0);

    return start + res;
}
