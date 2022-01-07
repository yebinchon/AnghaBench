
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {scalar_t__ draining; int refsync; int refcount; scalar_t__ reinit; } ;
typedef TYPE_2__ V4L2m2mContext ;
struct TYPE_9__ {int context_ref; TYPE_1__* context; int status; int context_refcount; } ;
typedef TYPE_3__ V4L2Buffer ;
struct TYPE_7__ {scalar_t__ streamon; } ;


 int V4L2BUF_AVAILABLE ;
 int atomic_fetch_sub (int *,int) ;
 int atomic_fetch_sub_explicit (int *,int,int ) ;
 int atomic_load (int *) ;
 int av_buffer_unref (int *) ;
 TYPE_2__* buf_to_m2mctx (TYPE_3__*) ;
 int ff_v4l2_buffer_enqueue (TYPE_3__*) ;
 int memory_order_acq_rel ;
 int sem_post (int *) ;

__attribute__((used)) static void v4l2_free_buffer(void *opaque, uint8_t *unused)
{
    V4L2Buffer* avbuf = opaque;
    V4L2m2mContext *s = buf_to_m2mctx(avbuf);

    if (atomic_fetch_sub(&avbuf->context_refcount, 1) == 1) {
        atomic_fetch_sub_explicit(&s->refcount, 1, memory_order_acq_rel);

        if (s->reinit) {
            if (!atomic_load(&s->refcount))
                sem_post(&s->refsync);
        } else {
            if (s->draining) {

                avbuf->status = V4L2BUF_AVAILABLE;
            }
            else if (avbuf->context->streamon)
                ff_v4l2_buffer_enqueue(avbuf);
        }

        av_buffer_unref(&avbuf->context_ref);
    }
}
