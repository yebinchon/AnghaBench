
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ is_live; } ;
typedef TYPE_2__ WebMDashMuxContext ;
struct TYPE_13__ {char* value; } ;
struct TYPE_12__ {int pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {TYPE_1__* codecpar; int metadata; } ;
struct TYPE_9__ {scalar_t__ codec_type; int codec_id; int sample_rate; int height; int width; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVDictionaryEntry ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int BANDWIDTH ;
 int CUES_END ;
 int CUES_START ;
 int FILENAME ;
 int INITIALIZATION_RANGE ;
 TYPE_5__* av_dict_get (int ,int ,int *,int ) ;
 int avio_printf (int ,char*,...) ;
 int get_codec_name (int ) ;

__attribute__((used)) static int write_representation(AVFormatContext *s, AVStream *stream, char *id,
                                int output_width, int output_height,
                                int output_sample_rate) {
    WebMDashMuxContext *w = s->priv_data;
    AVDictionaryEntry *irange = av_dict_get(stream->metadata, INITIALIZATION_RANGE, ((void*)0), 0);
    AVDictionaryEntry *cues_start = av_dict_get(stream->metadata, CUES_START, ((void*)0), 0);
    AVDictionaryEntry *cues_end = av_dict_get(stream->metadata, CUES_END, ((void*)0), 0);
    AVDictionaryEntry *filename = av_dict_get(stream->metadata, FILENAME, ((void*)0), 0);
    AVDictionaryEntry *bandwidth = av_dict_get(stream->metadata, BANDWIDTH, ((void*)0), 0);
    const char *bandwidth_str;
    if ((w->is_live && (!filename)) ||
        (!w->is_live && (!irange || !cues_start || !cues_end || !filename || !bandwidth))) {
        return AVERROR_INVALIDDATA;
    }
    avio_printf(s->pb, "<Representation id=\"%s\"", id);

    if (w->is_live && !bandwidth) {
        bandwidth_str = (stream->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) ? "128000" : "1000000";
    } else {
        bandwidth_str = bandwidth->value;
    }
    avio_printf(s->pb, " bandwidth=\"%s\"", bandwidth_str);
    if (stream->codecpar->codec_type == AVMEDIA_TYPE_VIDEO && output_width)
        avio_printf(s->pb, " width=\"%d\"", stream->codecpar->width);
    if (stream->codecpar->codec_type == AVMEDIA_TYPE_VIDEO && output_height)
        avio_printf(s->pb, " height=\"%d\"", stream->codecpar->height);
    if (stream->codecpar->codec_type == AVMEDIA_TYPE_AUDIO && output_sample_rate)
        avio_printf(s->pb, " audioSamplingRate=\"%d\"", stream->codecpar->sample_rate);
    if (w->is_live) {

        avio_printf(s->pb, " codecs=\"%s\"", get_codec_name(stream->codecpar->codec_id));
        avio_printf(s->pb, " mimeType=\"%s/webm\"",
                    stream->codecpar->codec_type == AVMEDIA_TYPE_VIDEO ? "video" : "audio");


        avio_printf(s->pb, " startsWithSAP=\"1\"");
        avio_printf(s->pb, ">");
    } else {
        avio_printf(s->pb, ">\n");
        avio_printf(s->pb, "<BaseURL>%s</BaseURL>\n", filename->value);
        avio_printf(s->pb, "<SegmentBase\n");
        avio_printf(s->pb, "  indexRange=\"%s-%s\">\n", cues_start->value, cues_end->value);
        avio_printf(s->pb, "<Initialization\n");
        avio_printf(s->pb, "  range=\"0-%s\" />\n", irange->value);
        avio_printf(s->pb, "</SegmentBase>\n");
    }
    avio_printf(s->pb, "</Representation>\n");
    return 0;
}
