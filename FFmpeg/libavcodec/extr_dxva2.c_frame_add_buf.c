
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* buf; } ;
typedef TYPE_1__ AVFrame ;
typedef int AVBufferRef ;


 int AVERROR (int ) ;
 int AV_NUM_DATA_POINTERS ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ av_buffer_ref (int *) ;

__attribute__((used)) static int frame_add_buf(AVFrame *frame, AVBufferRef *ref)
{
    int i;

    for (i = 0; i < AV_NUM_DATA_POINTERS; i++) {
        if (!frame->buf[i]) {
            frame->buf[i] = av_buffer_ref(ref);
            return frame->buf[i] ? 0 : AVERROR(ENOMEM);
        }
    }



    return AVERROR(EINVAL);
}
