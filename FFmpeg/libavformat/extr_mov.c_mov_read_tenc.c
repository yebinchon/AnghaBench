
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {unsigned int crypt_byte_block; unsigned int skip_byte_block; int iv; int key_id; } ;
struct TYPE_15__ {int nb_streams; TYPE_5__** streams; } ;
struct TYPE_14__ {TYPE_2__* priv_data; } ;
struct TYPE_13__ {int size; } ;
struct TYPE_12__ {TYPE_8__* fc; } ;
struct TYPE_10__ {int per_sample_iv_size; TYPE_9__* default_encrypted_sample; scalar_t__ encryption_index; } ;
struct TYPE_11__ {scalar_t__ pseudo_stream_id; TYPE_1__ cenc; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef int MOVEncryptionIndex ;
typedef TYPE_3__ MOVContext ;
typedef TYPE_4__ MOVAtom ;
typedef TYPE_5__ AVStream ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 TYPE_9__* av_encryption_info_alloc (int ,int,int) ;
 int av_log (TYPE_8__*,int ,char*) ;
 scalar_t__ av_mallocz (int) ;
 void* avio_r8 (int *) ;
 int avio_rb24 (int *) ;
 unsigned int avio_read (int *,int ,unsigned int) ;

__attribute__((used)) static int mov_read_tenc(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    MOVStreamContext *sc;
    unsigned int version, pattern, is_protected, iv_size;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];
    sc = st->priv_data;

    if (sc->pseudo_stream_id != 0) {
        av_log(c->fc, AV_LOG_ERROR, "tenc atom are only supported in first sample descriptor\n");
        return AVERROR_PATCHWELCOME;
    }

    if (!sc->cenc.default_encrypted_sample) {
        sc->cenc.default_encrypted_sample = av_encryption_info_alloc(0, 16, 16);
        if (!sc->cenc.default_encrypted_sample) {
            return AVERROR(ENOMEM);
        }
    }

    if (atom.size < 20)
        return AVERROR_INVALIDDATA;

    version = avio_r8(pb);
    avio_rb24(pb);

    avio_r8(pb);
    pattern = avio_r8(pb);

    if (version > 0) {
        sc->cenc.default_encrypted_sample->crypt_byte_block = pattern >> 4;
        sc->cenc.default_encrypted_sample->skip_byte_block = pattern & 0xf;
    }

    is_protected = avio_r8(pb);
    if (is_protected && !sc->cenc.encryption_index) {

        sc->cenc.encryption_index = av_mallocz(sizeof(MOVEncryptionIndex));
        if (!sc->cenc.encryption_index)
            return AVERROR(ENOMEM);
    }
    sc->cenc.per_sample_iv_size = avio_r8(pb);
    if (sc->cenc.per_sample_iv_size != 0 && sc->cenc.per_sample_iv_size != 8 &&
        sc->cenc.per_sample_iv_size != 16) {
        av_log(c->fc, AV_LOG_ERROR, "invalid per-sample IV size value\n");
        return AVERROR_INVALIDDATA;
    }
    if (avio_read(pb, sc->cenc.default_encrypted_sample->key_id, 16) != 16) {
        av_log(c->fc, AV_LOG_ERROR, "failed to read the default key ID\n");
        return AVERROR_INVALIDDATA;
    }

    if (is_protected && !sc->cenc.per_sample_iv_size) {
        iv_size = avio_r8(pb);
        if (iv_size != 8 && iv_size != 16) {
            av_log(c->fc, AV_LOG_ERROR, "invalid default_constant_IV_size in tenc atom\n");
            return AVERROR_INVALIDDATA;
        }

        if (avio_read(pb, sc->cenc.default_encrypted_sample->iv, iv_size) != iv_size) {
            av_log(c->fc, AV_LOG_ERROR, "failed to read the default IV\n");
            return AVERROR_INVALIDDATA;
        }
    }

    return 0;
}
