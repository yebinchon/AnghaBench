
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* int64_t ;
struct TYPE_14__ {scalar_t__ frameno_in; scalar_t__ frameno_out; int delay_list; TYPE_1__* job; void* dts_delay; } ;
typedef TYPE_3__ hb_work_private_t ;
struct TYPE_13__ {void* start; void* renderOffset; } ;
struct TYPE_15__ {TYPE_2__ s; struct TYPE_15__* next; } ;
typedef TYPE_4__ hb_buffer_t ;
struct TYPE_12__ {scalar_t__ areBframes; } ;


 void* get_frame_start (TYPE_3__*,scalar_t__) ;
 int hb_buffer_list_append (int *,TYPE_4__*) ;
 TYPE_4__* hb_buffer_list_clear (int *) ;
 TYPE_4__* hb_buffer_list_head (int *) ;

__attribute__((used)) static hb_buffer_t * process_delay_list( hb_work_private_t * pv, hb_buffer_t * buf )
{
    if (pv->job->areBframes)
    {

        hb_buffer_list_append(&pv->delay_list, buf);
        if (pv->frameno_in <= pv->job->areBframes)
        {

            return ((void*)0);
        }



        buf = hb_buffer_list_head(&pv->delay_list);
        while (buf != ((void*)0))
        {



            if (pv->frameno_out < pv->job->areBframes)
            {
                int64_t start = get_frame_start( pv, pv->frameno_out );
                buf->s.renderOffset = start - pv->dts_delay;
            }
            else
            {
                buf->s.renderOffset = get_frame_start(pv,
                                        pv->frameno_out - pv->job->areBframes);
            }
            buf = buf->next;
            pv->frameno_out++;
        }
        buf = hb_buffer_list_clear(&pv->delay_list);
        return buf;
    }
    else if (buf != ((void*)0))
    {
        buf->s.renderOffset = buf->s.start;
        return buf;
    }
    return ((void*)0);
}
