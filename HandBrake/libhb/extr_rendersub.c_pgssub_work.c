
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int sub_list; } ;
typedef TYPE_3__ hb_filter_private_t ;
struct TYPE_17__ {TYPE_1__* subtitle; TYPE_3__* private_data; } ;
typedef TYPE_4__ hb_filter_object_t ;
struct TYPE_15__ {int flags; } ;
struct TYPE_18__ {TYPE_2__ s; } ;
typedef TYPE_5__ hb_buffer_t ;
struct TYPE_14__ {int fifo_out; } ;


 int ApplyPGSSubs (TYPE_3__*,TYPE_5__*) ;
 int HB_BUF_FLAG_EOF ;
 int HB_FILTER_DONE ;
 int HB_FILTER_OK ;
 int hb_buffer_close (TYPE_5__**) ;
 TYPE_5__* hb_fifo_get (int ) ;
 int hb_list_add (int ,TYPE_5__*) ;

__attribute__((used)) static int pgssub_work( hb_filter_object_t * filter,
                        hb_buffer_t ** buf_in,
                        hb_buffer_t ** buf_out)
{
    hb_filter_private_t * pv = filter->private_data;
    hb_buffer_t * in = *buf_in;
    hb_buffer_t * sub;

    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        *buf_in = ((void*)0);
        *buf_out = in;
        return HB_FILTER_DONE;
    }



    while ( ( sub = hb_fifo_get( filter->subtitle->fifo_out ) ) )
    {
        if (sub->s.flags & HB_BUF_FLAG_EOF)
        {
            hb_buffer_close(&sub);
            break;
        }
        hb_list_add( pv->sub_list, sub );
    }

    ApplyPGSSubs( pv, in );
    *buf_in = ((void*)0);
    *buf_out = in;

    return HB_FILTER_OK;
}
