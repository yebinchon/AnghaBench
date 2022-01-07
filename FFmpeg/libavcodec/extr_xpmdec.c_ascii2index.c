
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ const MAX_ELEMENT ;
 scalar_t__ const MIN_ELEMENT ;
 int NB_ELEMENTS ;

__attribute__((used)) static int ascii2index(const uint8_t *cpixel, int cpp)
{
    const uint8_t *p = cpixel;
    int n = 0, m = 1, i;

    for (i = 0; i < cpp; i++) {
        if (*p < MIN_ELEMENT || *p > MAX_ELEMENT)
            return AVERROR_INVALIDDATA;
        n += (*p++ - MIN_ELEMENT) * m;
        m *= NB_ELEMENTS;
    }
    return n;
}
