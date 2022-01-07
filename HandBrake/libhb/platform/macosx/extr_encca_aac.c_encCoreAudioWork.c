
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int input_done; scalar_t__ first_pts; int list; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_17__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_15__ {int flags; scalar_t__ start; } ;
struct TYPE_18__ {TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 TYPE_4__* Encode (TYPE_3__*) ;
 int Flush (TYPE_3__*,int *) ;
 int HB_BUF_FLAG_EOF ;
 int HB_WORK_DONE ;
 int HB_WORK_OK ;
 TYPE_4__* hb_buffer_eof_init () ;
 int hb_buffer_list_append (int *,TYPE_4__*) ;
 TYPE_4__* hb_buffer_list_clear (int *) ;
 int hb_list_add (int ,TYPE_4__*) ;

int encCoreAudioWork(hb_work_object_t *w, hb_buffer_t **buf_in,
                     hb_buffer_t **buf_out)
{
    hb_work_private_t *pv = w->private_data;
    hb_buffer_t * in = *buf_in;
    hb_buffer_t * buf;
    hb_buffer_list_t list;

    hb_buffer_list_clear(&list);
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {

        pv->input_done = 1;
        Flush(w, &list);
        hb_buffer_list_append(&list, hb_buffer_eof_init());
        *buf_out = hb_buffer_list_clear(&list);
        return HB_WORK_DONE;
    }

    if (pv->first_pts == AV_NOPTS_VALUE)
    {
        pv->first_pts = in->s.start;
    }

    hb_list_add(pv->list, in);
    *buf_in = ((void*)0);

    buf = Encode(w);
    while (buf)
    {
        hb_buffer_list_append(&list, buf);
        buf = Encode(w);
    }

    *buf_out = hb_buffer_list_clear(&list);
    return HB_WORK_OK;
}
