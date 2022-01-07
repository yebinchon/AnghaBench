
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVDXVAContext ;
typedef int AVCodecContext ;


 int DXVA_CONTEXT_CFG_BITSTREAM (int const*,int *) ;
 int assert (int) ;

__attribute__((used)) static int is_slice_short(const AVCodecContext *avctx, AVDXVAContext *ctx)
{
    assert(DXVA_CONTEXT_CFG_BITSTREAM(avctx, ctx) == 1 ||
           DXVA_CONTEXT_CFG_BITSTREAM(avctx, ctx) == 2);
    return DXVA_CONTEXT_CFG_BITSTREAM(avctx, ctx) == 2;
}
