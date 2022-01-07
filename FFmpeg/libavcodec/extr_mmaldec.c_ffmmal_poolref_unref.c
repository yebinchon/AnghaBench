
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int refcount; } ;
typedef TYPE_1__ FFPoolRef ;


 int atomic_fetch_add_explicit (int *,int,int ) ;
 int av_free (TYPE_1__*) ;
 int memory_order_acq_rel ;
 int mmal_pool_destroy (int ) ;

__attribute__((used)) static void ffmmal_poolref_unref(FFPoolRef *ref)
{
    if (ref &&
        atomic_fetch_add_explicit(&ref->refcount, -1, memory_order_acq_rel) == 1) {
        mmal_pool_destroy(ref->pool);
        av_free(ref);
    }
}
