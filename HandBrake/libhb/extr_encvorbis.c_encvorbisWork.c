
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int list; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_15__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_13__ {int flags; } ;
struct TYPE_16__ {TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 TYPE_4__* Encode (TYPE_3__*) ;
 int HB_BUF_FLAG_EOF ;
 int HB_WORK_DONE ;
 int HB_WORK_OK ;
 int hb_buffer_list_append (int *,TYPE_4__*) ;
 TYPE_4__* hb_buffer_list_clear (int *) ;
 int hb_list_add (int ,TYPE_4__*) ;

int encvorbisWork( hb_work_object_t * w, hb_buffer_t ** buf_in,
                   hb_buffer_t ** buf_out )
{
    hb_work_private_t * pv = w->private_data;
    hb_buffer_t * in = *buf_in;
    hb_buffer_t * buf;
    hb_buffer_list_t list;

    *buf_in = ((void*)0);
    hb_buffer_list_clear(&list);
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {

        *buf_out = in;
        return HB_WORK_DONE;
    }

    hb_list_add(pv->list, in);

    buf = Encode( w );
    while (buf)
    {
        hb_buffer_list_append(&list, buf);
        buf = Encode( w );
    }

    *buf_out = hb_buffer_list_clear(&list);
    return HB_WORK_OK;
}
