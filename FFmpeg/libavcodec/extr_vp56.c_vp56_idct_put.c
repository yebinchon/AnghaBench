
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;
struct TYPE_4__ {int (* idct_put ) (int *,int ,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vp3dsp; } ;
typedef TYPE_2__ VP56Context ;


 int ff_vp3dsp_idct10_put (int *,int ,int *) ;
 int stub1 (int *,int ,int *) ;

__attribute__((used)) static void vp56_idct_put(VP56Context *s, uint8_t * dest, ptrdiff_t stride, int16_t *block, int selector)
{
    if (selector > 10 || selector == 1)
        s->vp3dsp.idct_put(dest, stride, block);
    else
        ff_vp3dsp_idct10_put(dest, stride, block);
}
