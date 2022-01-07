
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vpx_codec_ctx_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ VPX_CODEC_OK ;
 int av_log (int *,int ,char*,char const*) ;
 scalar_t__ vpx_codec_decode (int *,int *,int ,int *,int ) ;
 char* vpx_codec_error (int *) ;
 char* vpx_codec_error_detail (int *) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx, vpx_codec_ctx_t *decoder,
                        uint8_t *data, uint32_t data_sz)
{
    if (vpx_codec_decode(decoder, data, data_sz, ((void*)0), 0) != VPX_CODEC_OK) {
        const char *error = vpx_codec_error(decoder);
        const char *detail = vpx_codec_error_detail(decoder);

        av_log(avctx, AV_LOG_ERROR, "Failed to decode frame: %s\n", error);
        if (detail) {
            av_log(avctx, AV_LOG_ERROR, "  Additional information: %s\n",
                   detail);
        }
        return AVERROR_INVALIDDATA;
    }
    return 0;
}
