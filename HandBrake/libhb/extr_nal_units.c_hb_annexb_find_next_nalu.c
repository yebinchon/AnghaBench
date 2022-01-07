
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



uint8_t* hb_annexb_find_next_nalu(const uint8_t *start, size_t *size)
{
    uint8_t *nal = ((void*)0);
    uint8_t *buf = (uint8_t*)start;
    uint8_t *end = (uint8_t*)start + *size;


    while (end - buf > 3)
    {
        if (!buf[0] && !buf[1] && buf[2] == 1)
        {
            nal = (buf += 3);
            break;
        }
        buf++;
    }

    if (nal == ((void*)0))
    {
        *size = 0;
        return ((void*)0);
    }
    while (end - buf > 3)
    {
        if (!buf[0] && !buf[1] && (!buf[2] || buf[2] == 1))
        {
            end = buf;
            break;
        }
        buf++;
    }

    *size = end - nal;
    return nal;
}
