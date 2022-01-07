
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int fp_format; int algorithm; int ctx; } ;
typedef TYPE_1__ ChromaprintMuxContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;



 int av_log (TYPE_2__*,int ,char*) ;
 int avio_write (int *,void*,int) ;
 int chromaprint_dealloc (void*) ;
 int chromaprint_encode_fingerprint (void*,int,int ,void**,int*,int) ;
 int chromaprint_finish (int ) ;
 int chromaprint_get_raw_fingerprint (int ,void**,int*) ;
 int cleanup (TYPE_1__*) ;

__attribute__((used)) static int write_trailer(AVFormatContext *s)
{
    ChromaprintMuxContext *cpr = s->priv_data;
    AVIOContext *pb = s->pb;
    void *fp = ((void*)0), *enc_fp = ((void*)0);
    int size, enc_size, ret = AVERROR(EINVAL);

    if (!chromaprint_finish(cpr->ctx)) {
        av_log(s, AV_LOG_ERROR, "Failed to generate fingerprint\n");
        goto fail;
    }

    if (!chromaprint_get_raw_fingerprint(cpr->ctx, &fp, &size)) {
        av_log(s, AV_LOG_ERROR, "Failed to retrieve fingerprint\n");
        goto fail;
    }

    switch (cpr->fp_format) {
    case 128:
        avio_write(pb, fp, size * 4);
        break;
    case 129:
    case 130:
        if (!chromaprint_encode_fingerprint(fp, size, cpr->algorithm, &enc_fp, &enc_size,
                                            cpr->fp_format == 130)) {
            av_log(s, AV_LOG_ERROR, "Failed to encode fingerprint\n");
            goto fail;
        }
        avio_write(pb, enc_fp, enc_size);
        break;
    }

    ret = 0;
fail:
    if (fp)
        chromaprint_dealloc(fp);
    if (enc_fp)
        chromaprint_dealloc(enc_fp);
    cleanup(cpr);
    return ret;
}
