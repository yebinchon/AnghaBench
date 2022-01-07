
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_18__ {int stream_index; } ;
struct TYPE_17__ {int stop_parse; TYPE_10__* epg_stream; TYPE_8__* pkt; int stream; } ;
struct TYPE_12__ {TYPE_6__* opaque; } ;
struct TYPE_13__ {TYPE_1__ section_filter; } ;
struct TYPE_16__ {TYPE_2__ u; } ;
struct TYPE_15__ {scalar_t__ tid; int id; } ;
struct TYPE_14__ {int codec_id; int codec_type; } ;
struct TYPE_11__ {scalar_t__ discard; int index; TYPE_3__* codecpar; int id; } ;
typedef TYPE_4__ SectionHeader ;
typedef TYPE_5__ MpegTSFilter ;
typedef TYPE_6__ MpegTSContext ;


 scalar_t__ AVDISCARD_ALL ;
 int AVMEDIA_TYPE_DATA ;
 int AV_CODEC_ID_EPG ;
 int AV_LOG_TRACE ;
 int EIT_PID ;
 scalar_t__ EIT_TID ;
 scalar_t__ OEITS_END_TID ;
 int av_log (int ,int ,char*,...) ;
 TYPE_10__* avformat_new_stream (int ,int *) ;
 int new_data_packet (int const*,int,TYPE_8__*) ;
 scalar_t__ parse_section_header (TYPE_4__*,int const**,int const*) ;

__attribute__((used)) static void eit_cb(MpegTSFilter *filter, const uint8_t *section, int section_len)
{
    MpegTSContext *ts = filter->u.section_filter.opaque;
    const uint8_t *p, *p_end;
    SectionHeader h1, *h = &h1;






    if (!ts->epg_stream) {
        ts->epg_stream = avformat_new_stream(ts->stream, ((void*)0));
        if (!ts->epg_stream)
            return;
        ts->epg_stream->id = EIT_PID;
        ts->epg_stream->codecpar->codec_type = AVMEDIA_TYPE_DATA;
        ts->epg_stream->codecpar->codec_id = AV_CODEC_ID_EPG;
    }

    if (ts->epg_stream->discard == AVDISCARD_ALL)
        return;

    p_end = section + section_len - 4;
    p = section;

    if (parse_section_header(h, &p, p_end) < 0)
        return;
    if (h->tid < EIT_TID || h->tid > OEITS_END_TID)
        return;

    av_log(ts->stream, AV_LOG_TRACE, "EIT: tid received = %.02x\n", h->tid);





    if (h->id == 0xFFFF) {
        av_log(ts->stream, AV_LOG_TRACE, "Scrambled EIT table received.\n");
        return;
    }





    if (!ts->pkt)
        return;

    new_data_packet(section, section_len, ts->pkt);
    ts->pkt->stream_index = ts->epg_stream->index;
    ts->stop_parse = 1;
}
