
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int MpegEncContext ;


 int sse_16width_msa (int *,int ,int *,int ,int) ;

int ff_sse16_msa(MpegEncContext *v, uint8_t *src, uint8_t *ref,
                 ptrdiff_t stride, int height)
{
    return sse_16width_msa(src, stride, ref, stride, height);
}
