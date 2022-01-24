#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_17__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_3__* p_surface; TYPE_1__* sync; } ;
struct TYPE_24__ {TYPE_4__ out; } ;
typedef  TYPE_6__ hb_qsv_stage ;
typedef  int /*<<< orphan*/  hb_qsv_list ;
typedef  int /*<<< orphan*/  hb_fifo_t ;
struct TYPE_23__ {int /*<<< orphan*/ * qsv_atom; TYPE_8__* ctx; } ;
struct TYPE_25__ {scalar_t__ alloc; scalar_t__ data; struct TYPE_25__* next; TYPE_5__ qsv_details; } ;
typedef  TYPE_7__ hb_buffer_t ;
struct TYPE_26__ {int /*<<< orphan*/  pipes; } ;
struct TYPE_20__ {scalar_t__ Locked; } ;
struct TYPE_21__ {TYPE_2__ Data; } ;
struct TYPE_19__ {scalar_t__ in_use; } ;
struct TYPE_18__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  allocated; int /*<<< orphan*/  alloc_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_17__ buffers ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_7__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_6__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (scalar_t__) ; 

void FUNC15( hb_buffer_t ** _b )
{
    hb_buffer_t * b = *_b;

    while( b )
    {
#if HB_PROJECT_FEATURE_QSV
        // Reclaim QSV resources before dropping the buffer.
        // when decoding without QSV, the QSV atom will be NULL.
        if (b->qsv_details.qsv_atom != NULL && b->qsv_details.ctx != NULL)
        {
            hb_qsv_stage *stage = hb_qsv_get_last_stage(b->qsv_details.qsv_atom);
            if (stage != NULL)
            {
                hb_qsv_wait_on_sync(b->qsv_details.ctx, stage);
                if (stage->out.sync->in_use > 0)
                {
                    ff_qsv_atomic_dec(&stage->out.sync->in_use);
                }
                if (stage->out.p_surface->Data.Locked > 0)
                {
                    ff_qsv_atomic_dec(&stage->out.p_surface->Data.Locked);
                }
            }
            hb_qsv_flush_stages(b->qsv_details.ctx->pipes,
                                (hb_qsv_list**)&b->qsv_details.qsv_atom);
        }
#endif

        hb_buffer_t * next = b->next;
        hb_fifo_t *buffer_pool = FUNC14( b->alloc );

        b->next = NULL;

#if defined(HB_BUFFER_DEBUG)
        hb_lock(buffers.lock);
        hb_list_rem(buffers.alloc_list, b);
        hb_unlock(buffers.lock);
#endif
        if( buffer_pool && b->data && !FUNC6( buffer_pool ) )
        {
#if defined(HB_BUFFER_DEBUG)
            if (hb_fifo_contains(buffer_pool, b))
            {
                hb_error("hb_buffer_close: buffer %p already freed", b);
                assert(0);
            }
#endif
            FUNC7( buffer_pool, b );
            b = next;
            continue;
        }
        // either the pool is full or this size doesn't use a pool
        // free the buf
        if( b->data )
        {
            FUNC1(b->data);
            FUNC9(buffers.lock);
            buffers.allocated -= b->alloc;
            FUNC13(buffers.lock);
        }
        FUNC3( b );
        b = next;
    }

    *_b = NULL;
}