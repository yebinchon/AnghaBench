
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;


struct TYPE_22__ {unsigned int subsample_count; TYPE_13__* subsamples; int iv; } ;
struct TYPE_21__ {scalar_t__ eof_reached; } ;
struct TYPE_20__ {int fc; } ;
struct TYPE_18__ {scalar_t__ per_sample_iv_size; int default_encrypted_sample; } ;
struct TYPE_19__ {TYPE_1__ cenc; } ;
struct TYPE_17__ {int bytes_of_protected_data; void* bytes_of_clear_data; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef TYPE_3__ MOVContext ;
typedef int AVSubsampleEncryptionInfo ;
typedef TYPE_4__ AVIOContext ;
typedef TYPE_5__ AVEncryptionInfo ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 TYPE_5__* av_encryption_info_clone (int ) ;
 int av_encryption_info_free (TYPE_5__*) ;
 int av_free (TYPE_13__*) ;
 int av_log (int ,int ,char*) ;
 TYPE_13__* av_mallocz_array (unsigned int,int) ;
 void* avio_rb16 (TYPE_4__*) ;
 int avio_rb32 (TYPE_4__*) ;
 scalar_t__ avio_read (TYPE_4__*,int ,scalar_t__) ;

__attribute__((used)) static int mov_read_sample_encryption_info(MOVContext *c, AVIOContext *pb, MOVStreamContext *sc, AVEncryptionInfo **sample, int use_subsamples)
{
    int i;
    unsigned int subsample_count;
    AVSubsampleEncryptionInfo *subsamples;

    if (!sc->cenc.default_encrypted_sample) {
        av_log(c->fc, AV_LOG_ERROR, "Missing schm or tenc\n");
        return AVERROR_INVALIDDATA;
    }

    *sample = av_encryption_info_clone(sc->cenc.default_encrypted_sample);
    if (!*sample)
        return AVERROR(ENOMEM);

    if (sc->cenc.per_sample_iv_size != 0) {
        if (avio_read(pb, (*sample)->iv, sc->cenc.per_sample_iv_size) != sc->cenc.per_sample_iv_size) {
            av_log(c->fc, AV_LOG_ERROR, "failed to read the initialization vector\n");
            av_encryption_info_free(*sample);
            *sample = ((void*)0);
            return AVERROR_INVALIDDATA;
        }
    }

    if (use_subsamples) {
        subsample_count = avio_rb16(pb);
        av_free((*sample)->subsamples);
        (*sample)->subsamples = av_mallocz_array(subsample_count, sizeof(*subsamples));
        if (!(*sample)->subsamples) {
            av_encryption_info_free(*sample);
            *sample = ((void*)0);
            return AVERROR(ENOMEM);
        }

        for (i = 0; i < subsample_count && !pb->eof_reached; i++) {
            (*sample)->subsamples[i].bytes_of_clear_data = avio_rb16(pb);
            (*sample)->subsamples[i].bytes_of_protected_data = avio_rb32(pb);
        }

        if (pb->eof_reached) {
            av_log(c->fc, AV_LOG_ERROR, "hit EOF while reading sub-sample encryption info\n");
            av_encryption_info_free(*sample);
            *sample = ((void*)0);
            return AVERROR_INVALIDDATA;
        }
        (*sample)->subsample_count = subsample_count;
    }

    return 0;
}
