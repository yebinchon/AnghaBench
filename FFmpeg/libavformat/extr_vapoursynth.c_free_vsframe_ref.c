
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct vsframe_ref_data {int vss_state; scalar_t__ frame; TYPE_1__* vsapi; } ;
struct TYPE_2__ {int (* freeFrame ) (scalar_t__) ;} ;


 int av_buffer_unref (int *) ;
 int av_free (struct vsframe_ref_data*) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void free_vsframe_ref(void *opaque, uint8_t *data)
{
    struct vsframe_ref_data *d = opaque;

    if (d->frame)
        d->vsapi->freeFrame(d->frame);

    av_buffer_unref(&d->vss_state);

    av_free(d);
}
