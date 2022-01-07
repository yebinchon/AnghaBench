
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* int64_t ;
struct TYPE_7__ {int size; void* dts; void* pts; int * data; } ;
struct TYPE_8__ {TYPE_1__ packet_info; TYPE_6__* parser; int context; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_9__ {int frame_count; TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_10__ {void* dts; void* pts; } ;


 void* AV_NOPTS_VALUE ;
 int HB_WORK_OK ;
 int av_parser_parse2 (TYPE_6__*,int ,int **,int*,int *,int ,void*,void*,int ) ;
 int decodePacket (TYPE_3__*) ;

__attribute__((used)) static void videoParserFlush(hb_work_object_t * w)
{
    hb_work_private_t * pv = w->private_data;
    int result;
    uint8_t * pout = ((void*)0);
    int pout_len = 0;
    int64_t parser_pts = AV_NOPTS_VALUE;
    int64_t parser_dts = AV_NOPTS_VALUE;

    do
    {
        if (pv->parser)
        {
            av_parser_parse2(pv->parser, pv->context, &pout, &pout_len,
                                   ((void*)0), 0,
                                   AV_NOPTS_VALUE, AV_NOPTS_VALUE, 0 );
            parser_pts = pv->parser->pts;
            parser_dts = pv->parser->dts;
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
        }
    } while (pout != ((void*)0) && pout_len > 0);
}
