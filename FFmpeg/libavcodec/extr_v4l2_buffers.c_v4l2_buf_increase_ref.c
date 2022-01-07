
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int refcount; int self_ref; } ;
typedef TYPE_1__ V4L2m2mContext ;
struct TYPE_7__ {int context_refcount; int status; int context_ref; } ;
typedef TYPE_2__ V4L2Buffer ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int V4L2BUF_RET_USER ;
 int atomic_fetch_add (int*,int) ;
 int atomic_fetch_add_explicit (int *,int,int ) ;
 int av_buffer_ref (int ) ;
 TYPE_1__* buf_to_m2mctx (TYPE_2__*) ;
 int memory_order_relaxed ;

__attribute__((used)) static int v4l2_buf_increase_ref(V4L2Buffer *in)
{
    V4L2m2mContext *s = buf_to_m2mctx(in);

    if (in->context_ref)
        atomic_fetch_add(&in->context_refcount, 1);
    else {
        in->context_ref = av_buffer_ref(s->self_ref);
        if (!in->context_ref)
            return AVERROR(ENOMEM);

        in->context_refcount = 1;
    }

    in->status = V4L2BUF_RET_USER;
    atomic_fetch_add_explicit(&s->refcount, 1, memory_order_relaxed);

    return 0;
}
