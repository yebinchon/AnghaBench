
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;
struct TYPE_3__ {int (* fdct ) (int *) ;} ;
typedef TYPE_1__ FDCTDSPContext ;


 int stub1 (int *) ;

__attribute__((used)) static void prores_fdct(FDCTDSPContext *fdsp, const uint16_t *src,
                        ptrdiff_t linesize, int16_t *block)
{
    int x, y;
    const uint16_t *tsrc = src;

    for (y = 0; y < 8; y++) {
        for (x = 0; x < 8; x++)
            block[y * 8 + x] = tsrc[x];
        tsrc += linesize >> 1;
    }
    fdsp->fdct(block);
}
