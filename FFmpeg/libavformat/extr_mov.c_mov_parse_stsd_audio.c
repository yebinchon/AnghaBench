
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int uint16_t ;
struct TYPE_17__ {int value; } ;
struct TYPE_16__ {TYPE_1__* codecpar; int need_parsing; } ;
struct TYPE_15__ {int isom; TYPE_10__* fc; } ;
struct TYPE_14__ {int audio_cid; scalar_t__ stsd_version; int samples_per_frame; int bytes_per_frame; scalar_t__ format; int sample_size; } ;
struct TYPE_13__ {int channels; int bits_per_coded_sample; int sample_rate; scalar_t__ codec_tag; int codec_id; } ;
struct TYPE_12__ {int metadata; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef TYPE_3__ MOVContext ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_5__ AVDictionaryEntry ;


 int AVSTREAM_PARSE_FULL ;
 int AV_CODEC_ID_PCM_S24BE ;
 int AV_CODEC_ID_PCM_S24LE ;
 int const AV_CODEC_ID_PCM_S32BE ;
 int const AV_CODEC_ID_PCM_S32LE ;


 int AV_DICT_MATCH_CASE ;
 int AV_LOG_TRACE ;
 scalar_t__ MKTAG (char,char,char,char) ;
 TYPE_5__* av_dict_get (int ,char*,int *,int ) ;
 int av_get_bits_per_sample (int const) ;
 int av_int2double (int ) ;
 int av_log (TYPE_10__*,int ,char*,int,...) ;
 void* avio_rb16 (int *) ;
 int avio_rb32 (int *) ;
 int avio_rb64 (int *) ;
 int ff_mov_get_lpcm_codec_id (int,int) ;
 void* mov_codec_id (TYPE_4__*,scalar_t__) ;
 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static void mov_parse_stsd_audio(MOVContext *c, AVIOContext *pb,
                                 AVStream *st, MOVStreamContext *sc)
{
    int bits_per_sample, flags;
    uint16_t version = avio_rb16(pb);
    AVDictionaryEntry *compatible_brands = av_dict_get(c->fc->metadata, "compatible_brands", ((void*)0), AV_DICT_MATCH_CASE);

    avio_rb16(pb);
    avio_rb32(pb);

    st->codecpar->channels = avio_rb16(pb);
    st->codecpar->bits_per_coded_sample = avio_rb16(pb);
    av_log(c->fc, AV_LOG_TRACE, "audio channels %d\n", st->codecpar->channels);

    sc->audio_cid = avio_rb16(pb);
    avio_rb16(pb);

    st->codecpar->sample_rate = ((avio_rb32(pb) >> 16));


    av_log(c->fc, AV_LOG_TRACE, "version =%d, isom =%d\n", version, c->isom);
    if (!c->isom ||
        (compatible_brands && strstr(compatible_brands->value, "qt  ")) ||
        (sc->stsd_version == 0 && version > 0)) {
        if (version == 1) {
            sc->samples_per_frame = avio_rb32(pb);
            avio_rb32(pb);
            sc->bytes_per_frame = avio_rb32(pb);
            avio_rb32(pb);
        } else if (version == 2) {
            avio_rb32(pb);
            st->codecpar->sample_rate = av_int2double(avio_rb64(pb));
            st->codecpar->channels = avio_rb32(pb);
            avio_rb32(pb);
            st->codecpar->bits_per_coded_sample = avio_rb32(pb);

            flags = avio_rb32(pb);
            sc->bytes_per_frame = avio_rb32(pb);
            sc->samples_per_frame = avio_rb32(pb);
            if (st->codecpar->codec_tag == MKTAG('l','p','c','m'))
                st->codecpar->codec_id =
                    ff_mov_get_lpcm_codec_id(st->codecpar->bits_per_coded_sample,
                                             flags);
        }
        if (version == 0 || (version == 1 && sc->audio_cid != -2)) {

            switch (st->codecpar->codec_id) {
            case 133:
            case 132:
                st->need_parsing = AVSTREAM_PARSE_FULL;
                break;
            }
        }
    }

    if (sc->format == 0) {
        if (st->codecpar->bits_per_coded_sample == 8)
            st->codecpar->codec_id = mov_codec_id(st, MKTAG('r','a','w',' '));
        else if (st->codecpar->bits_per_coded_sample == 16)
            st->codecpar->codec_id = mov_codec_id(st, MKTAG('t','w','o','s'));
    }

    switch (st->codecpar->codec_id) {
    case 129:
    case 128:
        if (st->codecpar->bits_per_coded_sample == 16)
            st->codecpar->codec_id = 131;
        break;
    case 130:
    case 131:
        if (st->codecpar->bits_per_coded_sample == 8)
            st->codecpar->codec_id = 129;
        else if (st->codecpar->bits_per_coded_sample == 24)
            st->codecpar->codec_id =
                st->codecpar->codec_id == 131 ?
                AV_CODEC_ID_PCM_S24BE : AV_CODEC_ID_PCM_S24LE;
        else if (st->codecpar->bits_per_coded_sample == 32)
             st->codecpar->codec_id =
                st->codecpar->codec_id == 131 ?
                AV_CODEC_ID_PCM_S32BE : AV_CODEC_ID_PCM_S32LE;
        break;

    case 135:
        sc->samples_per_frame = 6;
        sc->bytes_per_frame = 2 * st->codecpar->channels;
        break;
    case 134:
        sc->samples_per_frame = 6;
        sc->bytes_per_frame = 1 * st->codecpar->channels;
        break;
    case 137:
        sc->samples_per_frame = 64;
        sc->bytes_per_frame = 34 * st->codecpar->channels;
        break;
    case 136:
        sc->samples_per_frame = 160;
        sc->bytes_per_frame = 33;
        break;
    default:
        break;
    }

    bits_per_sample = av_get_bits_per_sample(st->codecpar->codec_id);
    if (bits_per_sample) {
        st->codecpar->bits_per_coded_sample = bits_per_sample;
        sc->sample_size = (bits_per_sample >> 3) * st->codecpar->channels;
    }
}
