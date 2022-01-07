
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


struct TYPE_22__ {TYPE_3__* p_surface; TYPE_1__* sync; } ;
struct TYPE_24__ {TYPE_4__ out; } ;
typedef TYPE_6__ hb_qsv_stage ;
typedef int hb_qsv_list ;
typedef int hb_fifo_t ;
struct TYPE_23__ {int * qsv_atom; TYPE_8__* ctx; } ;
struct TYPE_25__ {scalar_t__ alloc; scalar_t__ data; struct TYPE_25__* next; TYPE_5__ qsv_details; } ;
typedef TYPE_7__ hb_buffer_t ;
struct TYPE_26__ {int pipes; } ;
struct TYPE_20__ {scalar_t__ Locked; } ;
struct TYPE_21__ {TYPE_2__ Data; } ;
struct TYPE_19__ {scalar_t__ in_use; } ;
struct TYPE_18__ {int lock; int allocated; int alloc_list; } ;


 int assert (int ) ;
 int av_free (scalar_t__) ;
 TYPE_17__ buffers ;
 int ff_qsv_atomic_dec (scalar_t__*) ;
 int free (TYPE_7__*) ;
 int hb_error (char*,TYPE_7__*) ;
 scalar_t__ hb_fifo_contains (int *,TYPE_7__*) ;
 int hb_fifo_is_full (int *) ;
 int hb_fifo_push_head (int *,TYPE_7__*) ;
 int hb_list_rem (int ,TYPE_7__*) ;
 int hb_lock (int ) ;
 int hb_qsv_flush_stages (int ,int **) ;
 TYPE_6__* hb_qsv_get_last_stage (int *) ;
 int hb_qsv_wait_on_sync (TYPE_8__*,TYPE_6__*) ;
 int hb_unlock (int ) ;
 int * size_to_pool (scalar_t__) ;

void hb_buffer_close( hb_buffer_t ** _b )
{
    hb_buffer_t * b = *_b;

    while( b )
    {
        hb_buffer_t * next = b->next;
        hb_fifo_t *buffer_pool = size_to_pool( b->alloc );

        b->next = ((void*)0);






        if( buffer_pool && b->data && !hb_fifo_is_full( buffer_pool ) )
        {







            hb_fifo_push_head( buffer_pool, b );
            b = next;
            continue;
        }


        if( b->data )
        {
            av_free(b->data);
            hb_lock(buffers.lock);
            buffers.allocated -= b->alloc;
            hb_unlock(buffers.lock);
        }
        free( b );
        b = next;
    }

    *_b = ((void*)0);
}
