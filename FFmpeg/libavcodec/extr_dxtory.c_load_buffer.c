
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int height; int width; } ;
typedef int GetByteContext ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int FFALIGN (int,int) ;
 int av_log (TYPE_1__*,int ,char*) ;
 int avpriv_request_sample (TYPE_1__*,char*,int,int ,int ) ;
 int bytestream2_get_le16 (int *) ;
 int bytestream2_init (int *,int const*,int) ;

__attribute__((used)) static int load_buffer(AVCodecContext *avctx,
                       const uint8_t *src, int src_size,
                       GetByteContext *gb,
                       int *nslices, int *off)
{
    bytestream2_init(gb, src, src_size);
    *nslices = bytestream2_get_le16(gb);
    *off = FFALIGN(*nslices * 4 + 2, 16);
    if (src_size < *off) {
        av_log(avctx, AV_LOG_ERROR, "no slice data\n");
        return AVERROR_INVALIDDATA;
    }

    if (!*nslices) {
        avpriv_request_sample(avctx, "%d slices for %dx%d", *nslices,
                              avctx->width, avctx->height);
        return AVERROR_PATCHWELCOME;
    }

    return 0;
}
