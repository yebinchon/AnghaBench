
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_19__ {int discard; int size; int scr_sequence; int pts; int * data; int frametype; int new_chap; } ;
struct TYPE_16__ {int unfinished; int list; TYPE_8__ packet_info; TYPE_12__* parser; int context; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_17__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_15__ {int flags; int scr_sequence; int start; int frametype; int new_chap; } ;
struct TYPE_18__ {int size; TYPE_1__ s; int * data; scalar_t__ alloc; } ;
typedef TYPE_4__ hb_buffer_t ;
struct TYPE_14__ {int pts; } ;


 int AV_NOPTS_VALUE ;
 int HB_BUF_FLAG_EOF ;
 int HB_FLAG_DISCARD ;
 int HB_WORK_DONE ;
 int HB_WORK_OK ;
 int audioParserFlush (TYPE_3__*) ;
 int av_parser_parse2 (TYPE_12__*,int ,int **,int*,int *,int,int ,int ,int ) ;
 int decodeAudio (TYPE_2__*,TYPE_8__*) ;
 int hb_buffer_list_append (int *,TYPE_4__*) ;
 TYPE_4__* hb_buffer_list_clear (int *) ;
 int memset (int *,int ,scalar_t__) ;

__attribute__((used)) static int decavcodecaWork( hb_work_object_t * w, hb_buffer_t ** buf_in,
                            hb_buffer_t ** buf_out )
{
    hb_work_private_t * pv = w->private_data;
    hb_buffer_t * in = *buf_in;




    if (in->data != ((void*)0))
    {
        memset(in->data + in->size, 0, in->alloc - in->size);
    }

    if (in->s.flags & HB_BUF_FLAG_EOF)
    {

        audioParserFlush(w);
        decodeAudio(pv, ((void*)0));
        hb_buffer_list_append(&pv->list, in);
        *buf_in = ((void*)0);
        *buf_out = hb_buffer_list_clear(&pv->list);
        return HB_WORK_DONE;
    }

    *buf_out = ((void*)0);

    int pos, len;
    int64_t pts = in->s.start;
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
        int64_t parser_pts;

        if ( pv->parser != ((void*)0) )
        {
            len = av_parser_parse2(pv->parser, pv->context, &pout, &pout_len,
                                   in->data + pos, in->size - pos,
                                   pts, pts, 0 );
            parser_pts = pv->parser->pts;
            pts = AV_NOPTS_VALUE;
        }
        else
        {
            pout = in->data;
            len = pout_len = in->size;
            parser_pts = in->s.start;
        }
        if (pout != ((void*)0) && pout_len > 0)
        {
            pv->packet_info.data = pout;
            pv->packet_info.size = pout_len;
            pv->packet_info.pts = parser_pts;

            decodeAudio(pv, &pv->packet_info);




            pv->packet_info.scr_sequence = in->s.scr_sequence;
            pv->packet_info.discard = !!(in->s.flags & HB_FLAG_DISCARD);
            pv->unfinished = 0;
        }
        if (len > 0 && pout_len <= 0)
        {
            pv->unfinished = 1;
        }
    }
    *buf_out = hb_buffer_list_clear(&pv->list);
    return HB_WORK_OK;
}
