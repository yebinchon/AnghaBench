
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char uint8_t ;
typedef void* uint64_t ;
typedef int int64_t ;
struct TYPE_12__ {char* data; int pos; void* duration; void* pts; int stream_index; } ;
struct TYPE_11__ {int index; } ;
struct TYPE_10__ {int queue_end; int queue; } ;
typedef int MatroskaTrack ;
typedef TYPE_1__ MatroskaDemuxContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_PKT_DATA_WEBVTT_IDENTIFIER ;
 int AV_PKT_DATA_WEBVTT_SETTINGS ;
 int ENOMEM ;
 int av_new_packet (TYPE_3__*,int) ;
 char* av_packet_new_side_data (TYPE_3__*,int ,int) ;
 int av_packet_unref (TYPE_3__*) ;
 int ff_packet_list_put (int *,int *,TYPE_3__*,int ) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static int matroska_parse_webvtt(MatroskaDemuxContext *matroska,
                                 MatroskaTrack *track,
                                 AVStream *st,
                                 uint8_t *data, int data_len,
                                 uint64_t timecode,
                                 uint64_t duration,
                                 int64_t pos)
{
    AVPacket pktl, *pkt = &pktl;
    uint8_t *id, *settings, *text, *buf;
    int id_len, settings_len, text_len;
    uint8_t *p, *q;
    int err;

    if (data_len <= 0)
        return AVERROR_INVALIDDATA;

    p = data;
    q = data + data_len;

    id = p;
    id_len = -1;
    while (p < q) {
        if (*p == '\r' || *p == '\n') {
            id_len = p - id;
            if (*p == '\r')
                p++;
            break;
        }
        p++;
    }

    if (p >= q || *p != '\n')
        return AVERROR_INVALIDDATA;
    p++;

    settings = p;
    settings_len = -1;
    while (p < q) {
        if (*p == '\r' || *p == '\n') {
            settings_len = p - settings;
            if (*p == '\r')
                p++;
            break;
        }
        p++;
    }

    if (p >= q || *p != '\n')
        return AVERROR_INVALIDDATA;
    p++;

    text = p;
    text_len = q - p;
    while (text_len > 0) {
        const int len = text_len - 1;
        const uint8_t c = p[len];
        if (c != '\r' && c != '\n')
            break;
        text_len = len;
    }

    if (text_len <= 0)
        return AVERROR_INVALIDDATA;

    err = av_new_packet(pkt, text_len);
    if (err < 0) {
        return err;
    }

    memcpy(pkt->data, text, text_len);

    if (id_len > 0) {
        buf = av_packet_new_side_data(pkt,
                                      AV_PKT_DATA_WEBVTT_IDENTIFIER,
                                      id_len);
        if (!buf) {
            av_packet_unref(pkt);
            return AVERROR(ENOMEM);
        }
        memcpy(buf, id, id_len);
    }

    if (settings_len > 0) {
        buf = av_packet_new_side_data(pkt,
                                      AV_PKT_DATA_WEBVTT_SETTINGS,
                                      settings_len);
        if (!buf) {
            av_packet_unref(pkt);
            return AVERROR(ENOMEM);
        }
        memcpy(buf, settings, settings_len);
    }




    pkt->stream_index = st->index;
    pkt->pts = timecode;




    pkt->duration = duration;
    pkt->pos = pos;

    err = ff_packet_list_put(&matroska->queue, &matroska->queue_end, pkt, 0);
    if (err < 0) {
        av_packet_unref(pkt);
        return AVERROR(ENOMEM);
    }

    return 0;
}
