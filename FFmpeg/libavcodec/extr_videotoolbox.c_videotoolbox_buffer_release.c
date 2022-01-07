
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int pixbuf; int hw_frames_ctx; } ;
typedef TYPE_1__ VTHWFrame ;


 int CVPixelBufferRelease (int ) ;
 int av_buffer_unref (int *) ;
 int av_free (int *) ;

__attribute__((used)) static void videotoolbox_buffer_release(void *opaque, uint8_t *data)
{
    VTHWFrame *ref = (VTHWFrame *)data;
    av_buffer_unref(&ref->hw_frames_ctx);
    CVPixelBufferRelease(ref->pixbuf);

    av_free(data);
}
