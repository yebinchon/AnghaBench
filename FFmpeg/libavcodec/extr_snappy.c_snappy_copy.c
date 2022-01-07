
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AVERROR_INVALIDDATA ;

__attribute__((used)) static int snappy_copy(uint8_t *start, uint8_t *p, int size,
                       unsigned int off, int len)
{
    uint8_t *q;
    int i;
    if (off > p - start || size < len)
        return AVERROR_INVALIDDATA;

    q = p - off;

    for (i = 0; i < len; i++)
        p[i] = q[i];

    return len;
}
