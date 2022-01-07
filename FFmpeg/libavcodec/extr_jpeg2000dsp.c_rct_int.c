
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;



__attribute__((used)) static void rct_int(void *_src0, void *_src1, void *_src2, int csize)
{
    int32_t *src0 = _src0, *src1 = _src1, *src2 = _src2;
    int32_t i0, i1, i2;
    int i;

    for (i = 0; i < csize; i++) {
        i1 = *src0 - (*src2 + *src1 >> 2);
        i0 = i1 + *src2;
        i2 = i1 + *src1;
        *src0++ = i0;
        *src1++ = i1;
        *src2++ = i2;
    }
}
