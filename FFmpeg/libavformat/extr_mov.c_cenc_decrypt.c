
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {scalar_t__ scheme; scalar_t__ crypt_byte_block; scalar_t__ skip_byte_block; int subsample_count; TYPE_2__* subsamples; int iv; } ;
struct TYPE_12__ {int fc; int decryption_key; } ;
struct TYPE_9__ {scalar_t__ aes_ctr; } ;
struct TYPE_11__ {TYPE_1__ cenc; } ;
struct TYPE_10__ {int bytes_of_clear_data; int bytes_of_protected_data; } ;
typedef TYPE_3__ MOVStreamContext ;
typedef TYPE_4__ MOVContext ;
typedef TYPE_5__ AVEncryptionInfo ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 scalar_t__ MKBETAG (char,char,char,char) ;
 scalar_t__ av_aes_ctr_alloc () ;
 int av_aes_ctr_crypt (scalar_t__,int *,int *,int) ;
 int av_aes_ctr_init (scalar_t__,int ) ;
 int av_aes_ctr_set_full_iv (scalar_t__,int ) ;
 int av_log (int ,int ,char*) ;

__attribute__((used)) static int cenc_decrypt(MOVContext *c, MOVStreamContext *sc, AVEncryptionInfo *sample, uint8_t *input, int size)
{
    int i, ret;

    if (sample->scheme != MKBETAG('c','e','n','c') || sample->crypt_byte_block != 0 || sample->skip_byte_block != 0) {
        av_log(c->fc, AV_LOG_ERROR, "Only the 'cenc' encryption scheme is supported\n");
        return AVERROR_PATCHWELCOME;
    }

    if (!sc->cenc.aes_ctr) {

        sc->cenc.aes_ctr = av_aes_ctr_alloc();
        if (!sc->cenc.aes_ctr) {
            return AVERROR(ENOMEM);
        }

        ret = av_aes_ctr_init(sc->cenc.aes_ctr, c->decryption_key);
        if (ret < 0) {
            return ret;
        }
    }

    av_aes_ctr_set_full_iv(sc->cenc.aes_ctr, sample->iv);

    if (!sample->subsample_count)
    {

        av_aes_ctr_crypt(sc->cenc.aes_ctr, input, input, size);
        return 0;
    }

    for (i = 0; i < sample->subsample_count; i++)
    {
        if (sample->subsamples[i].bytes_of_clear_data + sample->subsamples[i].bytes_of_protected_data > size) {
            av_log(c->fc, AV_LOG_ERROR, "subsample size exceeds the packet size left\n");
            return AVERROR_INVALIDDATA;
        }


        input += sample->subsamples[i].bytes_of_clear_data;
        size -= sample->subsamples[i].bytes_of_clear_data;


        av_aes_ctr_crypt(sc->cenc.aes_ctr, input, input, sample->subsamples[i].bytes_of_protected_data);
        input += sample->subsamples[i].bytes_of_protected_data;
        size -= sample->subsamples[i].bytes_of_protected_data;
    }

    if (size > 0) {
        av_log(c->fc, AV_LOG_ERROR, "leftover packet bytes after subsample processing\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
