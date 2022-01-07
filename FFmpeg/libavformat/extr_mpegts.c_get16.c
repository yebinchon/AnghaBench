
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AVERROR_INVALIDDATA ;
 int AV_RB16 (int const*) ;

__attribute__((used)) static inline int get16(const uint8_t **pp, const uint8_t *p_end)
{
    const uint8_t *p;
    int c;

    p = *pp;
    if (1 >= p_end - p)
        return AVERROR_INVALIDDATA;
    c = AV_RB16(p);
    p += 2;
    *pp = p;
    return c;
}
