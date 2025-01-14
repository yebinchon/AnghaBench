
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef long int64_t ;
struct TYPE_17__ {int length; unsigned char* text; int version; scalar_t__ type; scalar_t__ sequence; } ;
typedef TYPE_2__ VivoContext ;
struct TYPE_20__ {int duration; int metadata; int pb; TYPE_2__* priv_data; } ;
struct TYPE_19__ {int member_0; int member_1; long num; long den; } ;
struct TYPE_18__ {TYPE_1__* codecpar; scalar_t__ start_time; } ;
struct TYPE_16__ {int sample_rate; long width; long height; int bits_per_coded_sample; int block_align; int bit_rate; int channels; int codec_type; scalar_t__ codec_tag; int codec_id; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVRational ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_G723_1 ;
 int AV_CODEC_ID_H263 ;
 int AV_LOG_DEBUG ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int av_dict_set (int *,unsigned char*,unsigned char*,int ) ;
 TYPE_4__ av_inv_q (TYPE_4__) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int av_parse_ratio (TYPE_4__*,unsigned char*,int,int ,TYPE_5__*) ;
 int av_rescale (long,int,int) ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 int avio_read (int ,unsigned char*,int) ;
 int avio_skip (int ,size_t) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,long) ;
 int sscanf (unsigned char*,char*,int*) ;
 unsigned char* strchr (unsigned char*,char) ;
 int strcmp (unsigned char*,char*) ;
 unsigned char* strstr (unsigned char*,char*) ;
 long strtol (unsigned char*,char**,int) ;
 int vivo_get_packet_header (TYPE_5__*) ;

__attribute__((used)) static int vivo_read_header(AVFormatContext *s)
{
    VivoContext *vivo = s->priv_data;
    AVRational fps = { 1, 25};
    AVStream *ast, *vst;
    unsigned char *line, *line_end, *key, *value;
    long value_int;
    int ret, value_used;
    int64_t duration = 0;
    char *end_value;

    vst = avformat_new_stream(s, ((void*)0));
    ast = avformat_new_stream(s, ((void*)0));
    if (!ast || !vst)
        return AVERROR(ENOMEM);

    ast->codecpar->sample_rate = 8000;

    while (1) {
        if ((ret = vivo_get_packet_header(s)) < 0)
            return ret;


        if (vivo->sequence || vivo->type)
            break;

        if (vivo->length <= 1024) {
            avio_read(s->pb, vivo->text, vivo->length);
            vivo->text[vivo->length] = 0;
        } else {
            av_log(s, AV_LOG_WARNING, "too big header, skipping\n");
            avio_skip(s->pb, vivo->length);
            continue;
        }

        line = vivo->text;
        while (*line) {
            line_end = strstr(line, "\r\n");
            if (!line_end)
                break;

            *line_end = 0;
            key = line;
            line = line_end + 2;

            if (line_end == key)
                continue;

            value = strchr(key, ':');
            if (!value) {
                av_log(s, AV_LOG_WARNING, "missing colon in key:value pair '%s'\n",
                       key);
                continue;
            }

            *value++ = 0;

            av_log(s, AV_LOG_DEBUG, "header: '%s' = '%s'\n", key, value);

            value_int = strtol(value, &end_value, 10);
            value_used = 0;
            if (*end_value == 0) {
                av_log(s, AV_LOG_DEBUG, "got a valid integer (%ld)\n", value_int);
                value_used = 1;
                if (!strcmp(key, "Duration")) {
                    duration = value_int;
                } else if (!strcmp(key, "Width")) {
                    vst->codecpar->width = value_int;
                } else if (!strcmp(key, "Height")) {
                    vst->codecpar->height = value_int;
                } else if (!strcmp(key, "TimeUnitNumerator")) {
                    fps.num = value_int / 1000;
                } else if (!strcmp(key, "TimeUnitDenominator")) {
                    fps.den = value_int;
                } else if (!strcmp(key, "SamplingFrequency")) {
                    ast->codecpar->sample_rate = value_int;
                } else if (!strcmp(key, "NominalBitrate")) {
                } else if (!strcmp(key, "Length")) {

                } else {
                    value_used = 0;
                }
            }

            if (!strcmp(key, "Version")) {
                if (sscanf(value, "Vivo/%d.", &vivo->version) != 1)
                    return AVERROR_INVALIDDATA;
                value_used = 1;
            } else if (!strcmp(key, "FPS")) {
                AVRational tmp;

                value_used = 1;
                if (!av_parse_ratio(&tmp, value, 10000, AV_LOG_WARNING, s))
                    fps = av_inv_q(tmp);
            }

            if (!value_used)
                av_dict_set(&s->metadata, key, value, 0);
        }
    }

    avpriv_set_pts_info(ast, 64, 1, ast->codecpar->sample_rate);
    avpriv_set_pts_info(vst, 64, fps.num, fps.den);
    if (duration)
        s->duration = av_rescale(duration, 1000, 1);

    vst->start_time = 0;
    vst->codecpar->codec_tag = 0;
    vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;

    if (vivo->version == 1) {
        vst->codecpar->codec_id = AV_CODEC_ID_H263;
        ast->codecpar->codec_id = AV_CODEC_ID_G723_1;
        ast->codecpar->bits_per_coded_sample = 8;
        ast->codecpar->block_align = 24;
        ast->codecpar->bit_rate = 6400;
    }

    ast->start_time = 0;
    ast->codecpar->codec_tag = 0;
    ast->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    ast->codecpar->channels = 1;

    return 0;
}
