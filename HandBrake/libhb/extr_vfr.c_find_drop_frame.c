
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_7__ {double* frame_metric; int out_last_stop; int frame_duration; scalar_t__ frame_analysis_duration; int frame_rate_list; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_6__ {scalar_t__ stop; scalar_t__ start; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;


 TYPE_3__* hb_list_item (int ,int) ;

__attribute__((used)) static int find_drop_frame(hb_filter_private_t * pv, int count)
{
    int ii, min;
    double * metrics = pv->frame_metric;
    hb_buffer_t * buf, * first;
    double cfr_stop;






    cfr_stop = pv->out_last_stop + pv->frame_duration * (count - 1);



    buf = hb_list_item(pv->frame_rate_list, count - 1);


    if (buf->s.stop >= (int64_t)cfr_stop)
    {
        return -1;
    }

    first = hb_list_item(pv->frame_rate_list, 0);
    min = 0;
    for (ii = 1; ii < count; ii++)
    {
        hb_buffer_t * buf = hb_list_item(pv->frame_rate_list, ii);

        if (buf->s.stop - first->s.start > pv->frame_analysis_duration)
        {
            break;
        }
        if (min < 0 || metrics[ii] < metrics[min])
        {
            min = ii;
        }
    }

    cfr_stop = pv->out_last_stop + pv->frame_duration * (ii - 1);
    buf = hb_list_item(pv->frame_rate_list, ii - 1);


    if (buf->s.stop >= (int64_t)cfr_stop)
    {
        return -1;
    }

    return min;
}
