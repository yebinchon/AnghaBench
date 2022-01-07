
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int list; TYPE_1__* context; } ;
typedef TYPE_3__ hb_work_private_t ;
struct TYPE_16__ {TYPE_3__* private_data; } ;
typedef TYPE_4__ hb_work_object_t ;
struct TYPE_14__ {int flags; } ;
struct TYPE_17__ {TYPE_2__ s; } ;
typedef TYPE_5__ hb_buffer_t ;
typedef int hb_buffer_list_t ;
struct TYPE_13__ {int * codec; } ;


 int Encode (TYPE_4__*,int *) ;
 int Flush (TYPE_4__*,int *) ;
 int HB_BUF_FLAG_EOF ;
 int HB_WORK_DONE ;
 int HB_WORK_OK ;
 int hb_buffer_eof_init () ;
 int hb_buffer_list_append (int *,int ) ;
 TYPE_5__* hb_buffer_list_clear (int *) ;
 int hb_error (char*) ;
 int hb_list_add (int ,TYPE_5__*) ;

__attribute__((used)) static int encavcodecaWork( hb_work_object_t * w, hb_buffer_t ** buf_in,
                    hb_buffer_t ** buf_out )
{
    hb_work_private_t * pv = w->private_data;
    hb_buffer_t * in = *buf_in;
    hb_buffer_list_t list;

    if (pv->context == ((void*)0) || pv->context->codec == ((void*)0))
    {
        hb_error("encavcodecaudio: codec context is uninitialized");
        return HB_WORK_DONE;
    }

    hb_buffer_list_clear(&list);
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {

        Flush(w, &list);
        hb_buffer_list_append(&list, hb_buffer_eof_init());
        *buf_out = hb_buffer_list_clear(&list);
        return HB_WORK_DONE;
    }

    hb_list_add( pv->list, in );
    *buf_in = ((void*)0);

    Encode(w, &list);
    *buf_out = hb_buffer_list_clear(&list);

    return HB_WORK_OK;
}
