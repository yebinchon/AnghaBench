
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef size_t int16_t ;


 int scale_dot_product (size_t*,size_t*,size_t,size_t) ;

__attribute__((used)) static void correlation(int32_t *corr, int32_t *ener, int16_t *buffer,
                        int16_t lag, int16_t blen, int16_t srange, int16_t scale)
{
    int16_t *w16ptr;

    w16ptr = &buffer[blen - srange - lag];

    *corr = scale_dot_product(&buffer[blen - srange], w16ptr, srange, scale);
    *ener = scale_dot_product(w16ptr, w16ptr, srange, scale);

    if (*ener == 0) {
        *corr = 0;
        *ener = 1;
    }
}
