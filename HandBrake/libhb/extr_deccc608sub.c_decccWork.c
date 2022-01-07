
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* cc608; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_14__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_12__ {int flags; int scr_sequence; int start; } ;
struct TYPE_15__ {int size; int data; TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;
struct TYPE_16__ {int list; int last_scr_sequence; int last_pts; } ;


 int HB_BUF_FLAG_EOF ;
 int HB_WORK_DONE ;
 int HB_WORK_OK ;
 int handle_end_of_data (TYPE_5__*) ;
 int hb_buffer_list_append (int *,TYPE_4__*) ;
 TYPE_4__* hb_buffer_list_clear (int *) ;
 int process608 (int ,int ,TYPE_5__*) ;

__attribute__((used)) static int decccWork( hb_work_object_t * w, hb_buffer_t ** buf_in,
               hb_buffer_t ** buf_out )
{
    hb_work_private_t * pv = w->private_data;
    hb_buffer_t * in = *buf_in;

    if (in->s.flags & HB_BUF_FLAG_EOF)
    {

        handle_end_of_data(pv->cc608);



        *buf_in = ((void*)0);
        hb_buffer_list_append(&pv->cc608->list, in);
        *buf_out = hb_buffer_list_clear(&pv->cc608->list);
        return HB_WORK_DONE;
    }

    pv->cc608->last_pts = in->s.start;
    pv->cc608->last_scr_sequence = in->s.scr_sequence;
    process608(in->data, in->size, pv->cc608);




    *buf_out = hb_buffer_list_clear(&pv->cc608->list);
    return HB_WORK_OK;
}
