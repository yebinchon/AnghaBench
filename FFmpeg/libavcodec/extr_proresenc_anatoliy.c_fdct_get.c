
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_3__ {int (* fdct ) (int *) ;} ;
typedef TYPE_1__ FDCTDSPContext ;


 int get (int *,int,int *) ;
 int stub1 (int *) ;

__attribute__((used)) static void fdct_get(FDCTDSPContext *fdsp, uint8_t *pixels, int stride, int16_t* block)
{
    get(pixels, stride, block);
    fdsp->fdct(block);
}
