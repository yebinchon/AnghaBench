
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP8Frame ;
typedef int AVCodecContext ;


 int IS_VP7 ;
 int vp78_decode_mv_mb_modes (int *,int *,int *,int ) ;

__attribute__((used)) static int vp7_decode_mv_mb_modes(AVCodecContext *avctx, VP8Frame *cur_frame,
                                   VP8Frame *prev_frame)
{
    return vp78_decode_mv_mb_modes(avctx, cur_frame, prev_frame, IS_VP7);
}
