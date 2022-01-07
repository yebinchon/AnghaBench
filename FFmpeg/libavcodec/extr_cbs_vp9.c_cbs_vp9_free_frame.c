
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int data_ref; } ;
typedef TYPE_1__ VP9RawFrame ;


 int av_buffer_unref (int *) ;
 int av_freep (TYPE_1__**) ;

__attribute__((used)) static void cbs_vp9_free_frame(void *opaque, uint8_t *content)
{
    VP9RawFrame *frame = (VP9RawFrame*)content;
    av_buffer_unref(&frame->data_ref);
    av_freep(&frame);
}
