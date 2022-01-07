
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int list; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_17__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_filter_object_t ;
struct TYPE_15__ {int flags; scalar_t__ start; scalar_t__ stop; scalar_t__ duration; } ;
struct TYPE_18__ {TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 int HB_BUF_FLAG_EOF ;
 int HB_FILTER_DONE ;
 int HB_FILTER_OK ;
 TYPE_4__* filterFrame (TYPE_2__*,TYPE_4__*) ;
 int hb_buffer_list_append (int *,TYPE_4__*) ;
 TYPE_4__* hb_buffer_list_clear (int *) ;
 int hb_buffer_list_prepend (int *,TYPE_4__*) ;
 TYPE_4__* hb_buffer_list_tail (int *) ;

__attribute__((used)) static int avfilter_work( hb_filter_object_t * filter,
                          hb_buffer_t ** buf_in, hb_buffer_t ** buf_out )
{
    hb_filter_private_t * pv = filter->private_data;
    hb_buffer_t * in = *buf_in;

    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        hb_buffer_t * out = filterFrame(pv, ((void*)0));
        hb_buffer_t * last = hb_buffer_list_tail(&pv->list);
        if (last != ((void*)0) && last->s.start != AV_NOPTS_VALUE)
        {
            last->s.stop = last->s.start + last->s.duration;
        }
        hb_buffer_list_prepend(&pv->list, out);
        hb_buffer_list_append(&pv->list, in);
        *buf_out = hb_buffer_list_clear(&pv->list);
        *buf_in = ((void*)0);
        return HB_FILTER_DONE;
    }

    *buf_out = filterFrame(pv, in);

    return HB_FILTER_OK;
}
