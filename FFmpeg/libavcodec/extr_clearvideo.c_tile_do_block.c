
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFrame ;
typedef int AVCodecContext ;


 int copy_block (int *,int *,int *,int,int,int,int,int,int) ;
 int copyadd_block (int *,int *,int *,int,int,int,int,int,int,int) ;

__attribute__((used)) static int tile_do_block(AVCodecContext *avctx, AVFrame *dst, AVFrame *src,
                         int plane, int x, int y, int dx, int dy, int size, int bias)
{
    int ret;

    if (!bias) {
        ret = copy_block(avctx, dst, src, plane, x, y, dx, dy, size);
    } else {
        ret = copyadd_block(avctx, dst, src, plane, x, y, dx, dy, size, bias);
    }

    return ret;
}
