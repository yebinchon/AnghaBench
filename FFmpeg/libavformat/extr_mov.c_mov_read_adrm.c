
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct AVSHA {int dummy; } ;
struct TYPE_3__ {int aax_mode; int activation_bytes_size; int audible_fixed_key_size; scalar_t__* file_key; scalar_t__* file_iv; int fc; int aes_decrypt; scalar_t__* audible_fixed_key; scalar_t__* activation_bytes; } ;
typedef TYPE_1__ MOVContext ;
typedef int MOVAtom ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_FATAL ;
 int AV_LOG_INFO ;
 int AV_LOG_WARNING ;
 int DRM_BLOB_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int av_aes_alloc () ;
 int av_aes_crypt (int ,scalar_t__*,scalar_t__*,int,scalar_t__*,int) ;
 int av_aes_init (int ,scalar_t__*,int,int) ;
 int av_free (struct AVSHA*) ;
 int av_log (int ,int ,char*,...) ;
 struct AVSHA* av_sha_alloc () ;
 int av_sha_final (struct AVSHA*,scalar_t__*) ;
 int av_sha_init (struct AVSHA*,int) ;
 int av_sha_update (struct AVSHA*,scalar_t__*,int) ;
 int avio_read (int *,scalar_t__*,int) ;
 scalar_t__ memcmp (scalar_t__*,scalar_t__*,int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static int mov_read_adrm(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    uint8_t intermediate_key[20];
    uint8_t intermediate_iv[20];
    uint8_t input[64];
    uint8_t output[64];
    uint8_t file_checksum[20];
    uint8_t calculated_checksum[20];
    struct AVSHA *sha;
    int i;
    int ret = 0;
    uint8_t *activation_bytes = c->activation_bytes;
    uint8_t *fixed_key = c->audible_fixed_key;

    c->aax_mode = 1;

    sha = av_sha_alloc();
    if (!sha)
        return AVERROR(ENOMEM);
    c->aes_decrypt = av_aes_alloc();
    if (!c->aes_decrypt) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }


    avio_read(pb, output, 8);
    avio_read(pb, input, DRM_BLOB_SIZE);
    avio_read(pb, output, 4);
    avio_read(pb, file_checksum, 20);

    av_log(c->fc, AV_LOG_INFO, "[aax] file checksum == ");
    for (i = 0; i < 20; i++)
        av_log(c->fc, AV_LOG_INFO, "%02x", file_checksum[i]);
    av_log(c->fc, AV_LOG_INFO, "\n");


    if (!activation_bytes) {
        av_log(c->fc, AV_LOG_WARNING, "[aax] activation_bytes option is missing!\n");
        ret = 0;
        goto fail;
    }
    if (c->activation_bytes_size != 4) {
        av_log(c->fc, AV_LOG_FATAL, "[aax] activation_bytes value needs to be 4 bytes!\n");
        ret = AVERROR(EINVAL);
        goto fail;
    }


    if (c->audible_fixed_key_size != 16) {
        av_log(c->fc, AV_LOG_FATAL, "[aax] audible_fixed_key value needs to be 16 bytes!\n");
        ret = AVERROR(EINVAL);
        goto fail;
    }


    av_sha_init(sha, 160);
    av_sha_update(sha, fixed_key, 16);
    av_sha_update(sha, activation_bytes, 4);
    av_sha_final(sha, intermediate_key);
    av_sha_init(sha, 160);
    av_sha_update(sha, fixed_key, 16);
    av_sha_update(sha, intermediate_key, 20);
    av_sha_update(sha, activation_bytes, 4);
    av_sha_final(sha, intermediate_iv);
    av_sha_init(sha, 160);
    av_sha_update(sha, intermediate_key, 16);
    av_sha_update(sha, intermediate_iv, 16);
    av_sha_final(sha, calculated_checksum);
    if (memcmp(calculated_checksum, file_checksum, 20)) {
        av_log(c->fc, AV_LOG_ERROR, "[aax] mismatch in checksums!\n");
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }
    av_aes_init(c->aes_decrypt, intermediate_key, 128, 1);
    av_aes_crypt(c->aes_decrypt, output, input, DRM_BLOB_SIZE >> 4, intermediate_iv, 1);
    for (i = 0; i < 4; i++) {

        if (activation_bytes[i] != output[3 - i]) {
            av_log(c->fc, AV_LOG_ERROR, "[aax] error in drm blob decryption!\n");
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }
    }
    memcpy(c->file_key, output + 8, 16);
    memcpy(input, output + 26, 16);
    av_sha_init(sha, 160);
    av_sha_update(sha, input, 16);
    av_sha_update(sha, c->file_key, 16);
    av_sha_update(sha, fixed_key, 16);
    av_sha_final(sha, c->file_iv);

fail:
    av_free(sha);

    return ret;
}
