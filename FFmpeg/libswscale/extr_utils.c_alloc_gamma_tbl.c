
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint16_t ;


 scalar_t__ av_malloc (int) ;
 double pow (int,double) ;

__attribute__((used)) static uint16_t * alloc_gamma_tbl(double e)
{
    int i = 0;
    uint16_t * tbl;
    tbl = (uint16_t*)av_malloc(sizeof(uint16_t) * 1 << 16);
    if (!tbl)
        return ((void*)0);

    for (i = 0; i < 65536; ++i) {
        tbl[i] = pow(i / 65535.0, e) * 65535.0;
    }
    return tbl;
}
