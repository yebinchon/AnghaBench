
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;
typedef int AVBufferRef ;


 int ff_nvdec_frame_params (int *,int *,int,int ) ;

__attribute__((used)) static int nvdec_mpeg4_frame_params(AVCodecContext *avctx,
                                  AVBufferRef *hw_frames_ctx)
{

    return ff_nvdec_frame_params(avctx, hw_frames_ctx, 2, 0);
}
