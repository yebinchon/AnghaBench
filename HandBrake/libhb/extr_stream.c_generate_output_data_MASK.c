#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_17__ {int header_len; scalar_t__ stream_id_ext; scalar_t__ packet_len; void* dts; void* pts; } ;
struct TYPE_21__ {int pes_info_valid; scalar_t__ packet_len; int packet_offset; int pes_list; TYPE_10__ pes_info; TYPE_7__* buf; } ;
typedef  TYPE_4__ hb_ts_stream_t ;
struct TYPE_19__ {void* pcr; scalar_t__ discontinuity; TYPE_4__* list; } ;
struct TYPE_18__ {TYPE_6__* list; } ;
struct TYPE_22__ {int need_keyframe; TYPE_2__ ts; TYPE_1__ pes; } ;
typedef  TYPE_5__ hb_stream_t ;
struct TYPE_23__ {int stream_kind; int next; scalar_t__ stream_id_ext; } ;
typedef  TYPE_6__ hb_pes_stream_t ;
struct TYPE_20__ {int split; void* renderOffset; void* start; void* pcr; scalar_t__ discontinuity; scalar_t__ new_chap; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;
struct TYPE_24__ {int size; int /*<<< orphan*/ * data; TYPE_3__ s; } ;
typedef  TYPE_7__ hb_buffer_t ;
typedef  int /*<<< orphan*/  hb_buffer_list_t ;

/* Variables and functions */
 void* AV_NOPTS_VALUE ; 
 int V ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 TYPE_7__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,int,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static hb_buffer_t * FUNC8(hb_stream_t *stream, int curstream)
{
    hb_buffer_list_t list;
    hb_buffer_t *buf = NULL;

    FUNC3(&list);
    hb_ts_stream_t * ts_stream = &stream->ts.list[curstream];
    hb_buffer_t * b = ts_stream->buf;
    if (!ts_stream->pes_info_valid)
    {
        if (!FUNC4(stream, b->data, b->size, &ts_stream->pes_info))
        {
            b->size = 0;
            ts_stream->packet_len = 0;
            ts_stream->packet_offset = 0;
            return NULL;
        }
        ts_stream->pes_info_valid = 1;
        ts_stream->packet_offset = ts_stream->pes_info.header_len;
    }

    uint8_t *tdat = b->data + ts_stream->packet_offset;
    int es_size = b->size - ts_stream->packet_offset;

    if (es_size <= 0)
    {
        return NULL;
    }

    int pes_idx;
    pes_idx = ts_stream->pes_list;
    hb_pes_stream_t *pes_stream = &stream->pes.list[pes_idx];
    if (stream->need_keyframe)
    {
        // we're looking for the first video frame because we're
        // doing random access during 'scan'
        int kind = pes_stream->stream_kind;
        if (kind != V || !FUNC5(stream, tdat, es_size))
        {
            // not the video stream or didn't find an I frame
            // but we'll only wait 255 video frames for an I frame.
            if (kind != V || ++stream->need_keyframe < 512)
            {
                b->size = 0;
                ts_stream->pes_info_valid = 0;
                ts_stream->packet_len = 0;
                ts_stream->packet_offset = 0;
                return NULL;
            }
        }
        stream->need_keyframe = 0;
    }

    // Some TS streams carry multiple substreams.  E.g. DTS-HD contains
    // a core DTS substream.  We demux these as separate streams here.
    // Check all substreams to see if this packet matches
    for (pes_idx = ts_stream->pes_list; pes_idx != -1;
         pes_idx = stream->pes.list[pes_idx].next)
    {
        hb_pes_stream_t *pes_stream = &stream->pes.list[pes_idx];
        if (pes_stream->stream_id_ext != ts_stream->pes_info.stream_id_ext &&
            pes_stream->stream_id_ext != 0)
        {
            continue;
        }
        // The substreams match.
        // Note that when stream->pes.list[pes_idx].stream_id_ext == 0,
        // we want the whole TS stream including all substreams.
        // DTS-HD is an example of this.

        buf = FUNC1(es_size);
        if (ts_stream->packet_len < ts_stream->pes_info.packet_len + 6)
        {
            buf->s.split = 1;
        }
        FUNC2(&list, buf);

        buf->s.id = FUNC0(pes_stream);
        buf->s.type = FUNC7(pes_stream->stream_kind);
        buf->s.new_chap = b->s.new_chap;
        b->s.new_chap = 0;

        // put the PTS & possible DTS into 'start' & 'renderOffset'
        // only put timestamps on the first output buffer for this PES packet.
        if (ts_stream->packet_offset > 0)
        {
            buf->s.discontinuity = stream->ts.discontinuity;
            stream->ts.discontinuity = 0;
            buf->s.pcr = stream->ts.pcr;
            stream->ts.pcr = AV_NOPTS_VALUE;
            buf->s.start = ts_stream->pes_info.pts;
            buf->s.renderOffset = ts_stream->pes_info.dts;
        }
        else
        {
            buf->s.pcr = AV_NOPTS_VALUE;
            buf->s.start = AV_NOPTS_VALUE;
            buf->s.renderOffset = AV_NOPTS_VALUE;
        }
        // copy the elementary stream data into the buffer
        FUNC6(buf->data, tdat, es_size);
    }

    if (ts_stream->pes_info.packet_len > 0 &&
        ts_stream->packet_len >= ts_stream->pes_info.packet_len + 6)
    {
        ts_stream->pes_info_valid = 0;
        ts_stream->packet_len = 0;
    }
    b->size = 0;
    ts_stream->packet_offset = 0;
    return FUNC3(&list);
}