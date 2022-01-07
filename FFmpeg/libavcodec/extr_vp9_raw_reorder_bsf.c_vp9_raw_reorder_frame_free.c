
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int packet; } ;
typedef TYPE_1__ VP9RawReorderFrame ;


 int av_freep (TYPE_1__**) ;
 int av_packet_free (int *) ;

__attribute__((used)) static void vp9_raw_reorder_frame_free(VP9RawReorderFrame **frame)
{
    if (*frame)
        av_packet_free(&(*frame)->packet);
    av_freep(frame);
}
