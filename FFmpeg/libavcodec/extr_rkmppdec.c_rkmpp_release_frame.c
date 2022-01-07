
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_2__* decoder_ref; int frame; } ;
typedef TYPE_1__ RKMPPFrameContext ;
typedef int AVDRMFrameDescriptor ;
typedef TYPE_2__ AVBufferRef ;


 int av_buffer_unref (TYPE_2__**) ;
 int av_free (int *) ;
 int mpp_frame_deinit (int *) ;

__attribute__((used)) static void rkmpp_release_frame(void *opaque, uint8_t *data)
{
    AVDRMFrameDescriptor *desc = (AVDRMFrameDescriptor *)data;
    AVBufferRef *framecontextref = (AVBufferRef *)opaque;
    RKMPPFrameContext *framecontext = (RKMPPFrameContext *)framecontextref->data;

    mpp_frame_deinit(&framecontext->frame);
    av_buffer_unref(&framecontext->decoder_ref);
    av_buffer_unref(&framecontextref);

    av_free(desc);
}
