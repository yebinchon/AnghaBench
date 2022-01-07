
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int uint8_t ;
typedef void* int64_t ;
struct TYPE_19__ {scalar_t__ new_chap; int discard; int size; int frametype; int scr_sequence; void* dts; void* pts; int * data; } ;
struct TYPE_20__ {scalar_t__ new_chap; scalar_t__ chap_time; scalar_t__ last_pts; int unfinished; int list; TYPE_2__ packet_info; TYPE_15__* context; int codec; TYPE_14__* parser; int chap_scr; int * palette; } ;
typedef TYPE_3__ hb_work_private_t ;
struct TYPE_21__ {int frame_count; TYPE_3__* private_data; } ;
typedef TYPE_4__ hb_work_object_t ;
struct TYPE_18__ {int flags; scalar_t__ start; scalar_t__ new_chap; int frametype; int scr_sequence; void* renderOffset; } ;
struct TYPE_22__ {int size; TYPE_1__ s; int * data; int * palette; scalar_t__ alloc; } ;
typedef TYPE_5__ hb_buffer_t ;
struct TYPE_17__ {int codec_id; int * codec; } ;
struct TYPE_16__ {void* dts; void* pts; } ;


 scalar_t__ AV_NOPTS_VALUE ;
 int HB_BUF_FLAG_EOF ;
 int HB_FLAG_DISCARD ;
 int HB_WORK_DONE ;
 int HB_WORK_OK ;
 int av_parser_parse2 (TYPE_14__*,TYPE_15__*,int **,int*,int *,int,void*,void*,int ) ;
 int avcodec_find_decoder (int) ;
 scalar_t__ decodeFrame (TYPE_3__*,int *) ;
 int decodePacket (TYPE_4__*) ;
 int hb_buffer_dup (TYPE_5__*) ;
 int hb_buffer_list_append (int *,int ) ;
 TYPE_5__* hb_buffer_list_clear (int *) ;
 int memset (int *,int ,scalar_t__) ;
 int videoParserFlush (TYPE_4__*) ;

__attribute__((used)) static int decavcodecvWork( hb_work_object_t * w, hb_buffer_t ** buf_in,
                            hb_buffer_t ** buf_out )
{
    hb_work_private_t * pv = w->private_data;
    hb_buffer_t * in = *buf_in;
    int result = HB_WORK_OK;

    *buf_out = ((void*)0);




    if (in->data != ((void*)0))
    {
        memset(in->data + in->size, 0, in->alloc - in->size);
    }
    if (in->palette != ((void*)0))
    {
        pv->palette = in->palette;
        in->palette = ((void*)0);
    }


    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        if (pv->context != ((void*)0) && pv->context->codec != ((void*)0))
        {
            videoParserFlush(w);
            while (decodeFrame(pv, ((void*)0)))
            {
                continue;
            }
        }
        hb_buffer_list_append(&pv->list, hb_buffer_dup(in));
        *buf_out = hb_buffer_list_clear(&pv->list);
        return HB_WORK_DONE;
    }







    int pos, len;
    int64_t pts = in->s.start;
    int64_t dts = in->s.renderOffset;

    if (in->s.new_chap > 0)
    {
        pv->new_chap = in->s.new_chap;
        pv->chap_scr = in->s.scr_sequence;
        if (in->s.start != AV_NOPTS_VALUE)
        {
            pv->chap_time = in->s.start;
        }
        else
        {
            pv->chap_time = pv->last_pts + 1;
        }
    }
    if (in->s.start != AV_NOPTS_VALUE)
    {
        pv->last_pts = in->s.start;
    }
    if (!pv->unfinished)
    {

        pv->packet_info.scr_sequence = in->s.scr_sequence;
        pv->packet_info.new_chap = in->s.new_chap;
        pv->packet_info.frametype = in->s.frametype;
        pv->packet_info.discard = !!(in->s.flags & HB_FLAG_DISCARD);
    }
    for (pos = 0; pos < in->size; pos += len)
    {
        uint8_t * pout = ((void*)0);
        int pout_len = 0;
        int64_t parser_pts, parser_dts;

        if (pv->parser)
        {
            int codec_id = pv->context->codec_id;
            len = av_parser_parse2(pv->parser, pv->context, &pout, &pout_len,
                                   in->data + pos, in->size - pos,
                                   pts, dts, 0 );
            parser_pts = pv->parser->pts;
            parser_dts = pv->parser->dts;
            pts = AV_NOPTS_VALUE;
            dts = AV_NOPTS_VALUE;

            if (codec_id != pv->context->codec_id)
            {



                pv->codec = avcodec_find_decoder(pv->context->codec_id);
            }
        }
        else
        {
            pout = in->data;
            len = pout_len = in->size;
            parser_pts = pts;
            parser_dts = dts;
        }

        if (pout != ((void*)0) && pout_len > 0)
        {
            pv->packet_info.data = pout;
            pv->packet_info.size = pout_len;
            pv->packet_info.pts = parser_pts;
            pv->packet_info.dts = parser_dts;

            result = decodePacket(w);
            if (result != HB_WORK_OK)
            {
                break;
            }
            w->frame_count++;




            pv->packet_info.scr_sequence = in->s.scr_sequence;
            pv->packet_info.new_chap = in->s.new_chap;
            pv->packet_info.frametype = in->s.frametype;
            pv->packet_info.discard = !!(in->s.flags & HB_FLAG_DISCARD);
            pv->unfinished = 0;
        }
        if (len > 0 && pout_len <= 0)
        {
            pv->unfinished = 1;
        }
    }
    *buf_out = hb_buffer_list_clear(&pv->list);

    return result;
}
