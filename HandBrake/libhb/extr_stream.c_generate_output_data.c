
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_17__ {int header_len; scalar_t__ stream_id_ext; scalar_t__ packet_len; void* dts; void* pts; } ;
struct TYPE_21__ {int pes_info_valid; scalar_t__ packet_len; int packet_offset; int pes_list; TYPE_10__ pes_info; TYPE_7__* buf; } ;
typedef TYPE_4__ hb_ts_stream_t ;
struct TYPE_19__ {void* pcr; scalar_t__ discontinuity; TYPE_4__* list; } ;
struct TYPE_18__ {TYPE_6__* list; } ;
struct TYPE_22__ {int need_keyframe; TYPE_2__ ts; TYPE_1__ pes; } ;
typedef TYPE_5__ hb_stream_t ;
struct TYPE_23__ {int stream_kind; int next; scalar_t__ stream_id_ext; } ;
typedef TYPE_6__ hb_pes_stream_t ;
struct TYPE_20__ {int split; void* renderOffset; void* start; void* pcr; scalar_t__ discontinuity; scalar_t__ new_chap; int type; int id; } ;
struct TYPE_24__ {int size; int * data; TYPE_3__ s; } ;
typedef TYPE_7__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 void* AV_NOPTS_VALUE ;
 int V ;
 int get_id (TYPE_6__*) ;
 TYPE_7__* hb_buffer_init (int) ;
 int hb_buffer_list_append (int *,TYPE_7__*) ;
 TYPE_7__* hb_buffer_list_clear (int *) ;
 int hb_parse_ps (TYPE_5__*,int *,int,TYPE_10__*) ;
 int isIframe (TYPE_5__*,int *,int) ;
 int memcpy (int *,int *,int) ;
 int stream_kind_to_buf_type (int) ;

__attribute__((used)) static hb_buffer_t * generate_output_data(hb_stream_t *stream, int curstream)
{
    hb_buffer_list_t list;
    hb_buffer_t *buf = ((void*)0);

    hb_buffer_list_clear(&list);
    hb_ts_stream_t * ts_stream = &stream->ts.list[curstream];
    hb_buffer_t * b = ts_stream->buf;
    if (!ts_stream->pes_info_valid)
    {
        if (!hb_parse_ps(stream, b->data, b->size, &ts_stream->pes_info))
        {
            b->size = 0;
            ts_stream->packet_len = 0;
            ts_stream->packet_offset = 0;
            return ((void*)0);
        }
        ts_stream->pes_info_valid = 1;
        ts_stream->packet_offset = ts_stream->pes_info.header_len;
    }

    uint8_t *tdat = b->data + ts_stream->packet_offset;
    int es_size = b->size - ts_stream->packet_offset;

    if (es_size <= 0)
    {
        return ((void*)0);
    }

    int pes_idx;
    pes_idx = ts_stream->pes_list;
    hb_pes_stream_t *pes_stream = &stream->pes.list[pes_idx];
    if (stream->need_keyframe)
    {


        int kind = pes_stream->stream_kind;
        if (kind != V || !isIframe(stream, tdat, es_size))
        {


            if (kind != V || ++stream->need_keyframe < 512)
            {
                b->size = 0;
                ts_stream->pes_info_valid = 0;
                ts_stream->packet_len = 0;
                ts_stream->packet_offset = 0;
                return ((void*)0);
            }
        }
        stream->need_keyframe = 0;
    }




    for (pes_idx = ts_stream->pes_list; pes_idx != -1;
         pes_idx = stream->pes.list[pes_idx].next)
    {
        hb_pes_stream_t *pes_stream = &stream->pes.list[pes_idx];
        if (pes_stream->stream_id_ext != ts_stream->pes_info.stream_id_ext &&
            pes_stream->stream_id_ext != 0)
        {
            continue;
        }





        buf = hb_buffer_init(es_size);
        if (ts_stream->packet_len < ts_stream->pes_info.packet_len + 6)
        {
            buf->s.split = 1;
        }
        hb_buffer_list_append(&list, buf);

        buf->s.id = get_id(pes_stream);
        buf->s.type = stream_kind_to_buf_type(pes_stream->stream_kind);
        buf->s.new_chap = b->s.new_chap;
        b->s.new_chap = 0;



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

        memcpy(buf->data, tdat, es_size);
    }

    if (ts_stream->pes_info.packet_len > 0 &&
        ts_stream->packet_len >= ts_stream->pes_info.packet_len + 6)
    {
        ts_stream->pes_info_valid = 0;
        ts_stream->packet_len = 0;
    }
    b->size = 0;
    ts_stream->packet_offset = 0;
    return hb_buffer_list_clear(&list);
}
