
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int hw_frames_ctx; int source; int (* unmap ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ HWMapDescriptor ;
typedef int AVHWFramesContext ;


 int av_buffer_unref (int *) ;
 int av_frame_free (int *) ;
 int av_free (TYPE_1__*) ;
 int stub1 (int *,TYPE_1__*) ;

__attribute__((used)) static void ff_hwframe_unmap(void *opaque, uint8_t *data)
{
    HWMapDescriptor *hwmap = (HWMapDescriptor*)data;
    AVHWFramesContext *ctx = opaque;

    if (hwmap->unmap)
        hwmap->unmap(ctx, hwmap);

    av_frame_free(&hwmap->source);

    av_buffer_unref(&hwmap->hw_frames_ctx);

    av_free(hwmap);
}
