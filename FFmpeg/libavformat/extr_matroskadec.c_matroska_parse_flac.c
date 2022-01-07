
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_12__ {int value; } ;
struct TYPE_11__ {TYPE_2__* codecpar; } ;
struct TYPE_8__ {int* data; int size; } ;
struct TYPE_10__ {TYPE_1__ codec_priv; TYPE_4__* stream; } ;
struct TYPE_9__ {int channel_layout; } ;
typedef TYPE_3__ MatroskaTrack ;
typedef TYPE_4__ AVStream ;
typedef int AVFormatContext ;
typedef TYPE_5__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_LOG_WARNING ;
 int FLAC_METADATA_TYPE_VORBIS_COMMENT ;
 int FLAC_STREAMINFO_SIZE ;
 int av_dict_free (int **) ;
 TYPE_5__* av_dict_get (int *,char*,int *,int ) ;
 int av_log (int *,int ,char*) ;
 int ff_vorbis_comment (int *,int **,int*,int,int ) ;
 int flac_parse_block_header (int*,int*,int*,int*) ;
 int strtol (int ,int *,int ) ;

__attribute__((used)) static int matroska_parse_flac(AVFormatContext *s,
                               MatroskaTrack *track,
                               int *offset)
{
    AVStream *st = track->stream;
    uint8_t *p = track->codec_priv.data;
    int size = track->codec_priv.size;

    if (size < 8 + FLAC_STREAMINFO_SIZE || p[4] & 0x7f) {
        av_log(s, AV_LOG_WARNING, "Invalid FLAC private data\n");
        track->codec_priv.size = 0;
        return 0;
    }
    *offset = 8;
    track->codec_priv.size = 8 + FLAC_STREAMINFO_SIZE;

    p += track->codec_priv.size;
    size -= track->codec_priv.size;


    while (size >= 4) {
        int block_last, block_type, block_size;

        flac_parse_block_header(p, &block_last, &block_type, &block_size);

        p += 4;
        size -= 4;
        if (block_size > size)
            return 0;


        if (block_type == FLAC_METADATA_TYPE_VORBIS_COMMENT) {
            AVDictionary *dict = ((void*)0);
            AVDictionaryEntry *chmask;

            ff_vorbis_comment(s, &dict, p, block_size, 0);
            chmask = av_dict_get(dict, "WAVEFORMATEXTENSIBLE_CHANNEL_MASK", ((void*)0), 0);
            if (chmask) {
                uint64_t mask = strtol(chmask->value, ((void*)0), 0);
                if (!mask || mask & ~0x3ffffULL) {
                    av_log(s, AV_LOG_WARNING,
                           "Invalid value of WAVEFORMATEXTENSIBLE_CHANNEL_MASK\n");
                } else
                    st->codecpar->channel_layout = mask;
            }
            av_dict_free(&dict);
        }

        p += block_size;
        size -= block_size;
    }

    return 0;
}
