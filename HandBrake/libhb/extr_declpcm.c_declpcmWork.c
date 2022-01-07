
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int size; int pos; int offset; scalar_t__ frame; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_16__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_14__ {int flags; } ;
struct TYPE_17__ {int size; scalar_t__ data; TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 TYPE_4__* Decode (TYPE_3__*) ;
 int HB_BUF_FLAG_EOF ;
 int HB_WORK_DONE ;
 int HB_WORK_OK ;
 int hb_buffer_list_append (int *,TYPE_4__*) ;
 TYPE_4__* hb_buffer_list_clear (int *) ;
 int lpcmInfo (TYPE_3__*,TYPE_4__*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int declpcmWork( hb_work_object_t * w, hb_buffer_t ** buf_in,
                 hb_buffer_t ** buf_out )
{
    hb_work_private_t * pv = w->private_data;
    hb_buffer_t *in = *buf_in;
    hb_buffer_t *buf = ((void*)0);
    hb_buffer_list_t list;

    hb_buffer_list_clear(&list);
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {

        *buf_out = in;
        *buf_in = ((void*)0);
        return HB_WORK_DONE;
    }



    if (pv->size)
    {
        memcpy(pv->frame + pv->pos, in->data + 6, pv->size - pv->pos);
        buf = Decode( w );
        hb_buffer_list_append(&list, buf);
    }


    lpcmInfo( w, in );
    int off = pv->offset;
    int amt = in->size - off;
    pv->pos = amt;
    memcpy( pv->frame, in->data + off, amt );
    if (amt >= pv->size)
    {
        buf = Decode( w );
        hb_buffer_list_append(&list, buf);
        pv->size = 0;
    }

    *buf_out = hb_buffer_list_clear(&list);
    return HB_WORK_OK;
}
