
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_9__ {int size; int pts; int * data; } ;
struct TYPE_7__ {TYPE_4__ packet_info; TYPE_5__* parser; int context; } ;
typedef TYPE_1__ hb_work_private_t ;
struct TYPE_8__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_work_object_t ;
struct TYPE_10__ {int pts; } ;


 int AV_NOPTS_VALUE ;
 int av_parser_parse2 (TYPE_5__*,int ,int **,int*,int *,int ,int ,int ,int ) ;
 int decodeAudio (TYPE_1__*,TYPE_4__*) ;

__attribute__((used)) static void audioParserFlush(hb_work_object_t * w)
{
    hb_work_private_t * pv = w->private_data;
    uint8_t * pout = ((void*)0);
    int pout_len = 0;
    int64_t parser_pts = AV_NOPTS_VALUE;

    do
    {
        if (pv->parser)
        {
            av_parser_parse2(pv->parser, pv->context, &pout, &pout_len,
                                   ((void*)0), 0,
                                   AV_NOPTS_VALUE, AV_NOPTS_VALUE, 0 );
            parser_pts = pv->parser->pts;
        }

        if (pout != ((void*)0) && pout_len > 0)
        {
            pv->packet_info.data = pout;
            pv->packet_info.size = pout_len;
            pv->packet_info.pts = parser_pts;

            decodeAudio(pv, &pv->packet_info);
        }
    } while (pout != ((void*)0) && pout_len > 0);
}
