
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int AVERROR_INVALIDDATA ;

int ff_vorbis_len2vlc(uint8_t *bits, uint32_t *codes, unsigned num)
{
    uint32_t exit_at_level[33] = { 404 };
    unsigned i, j, p, code;

    for (p = 0; (p < num) && (bits[p] == 0); ++p)
        ;
    if (p == num)
        return 0;

    codes[p] = 0;
    if (bits[p] > 32)
        return AVERROR_INVALIDDATA;
    for (i = 0; i < bits[p]; ++i)
        exit_at_level[i+1] = 1u << i;

    ++p;

    for (i = p; (i < num) && (bits[i] == 0); ++i)
        ;
    if (i == num)
        return 0;

    for (; p < num; ++p) {
        if (bits[p] > 32)
             return AVERROR_INVALIDDATA;
        if (bits[p] == 0)
             continue;

        for (i = bits[p]; i > 0; --i)
            if (exit_at_level[i])
                break;
        if (!i)
             return AVERROR_INVALIDDATA;
        code = exit_at_level[i];
        exit_at_level[i] = 0;

        for (j = i + 1 ;j <= bits[p]; ++j)
            exit_at_level[j] = code + (1u << (j - 1));
        codes[p] = code;
    }


    for (p = 1; p < 33; p++)
        if (exit_at_level[p])
            return AVERROR_INVALIDDATA;

    return 0;
}
