
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int slice_group_id_ref; } ;
typedef TYPE_1__ H264RawPPS ;


 int av_buffer_unref (int *) ;
 int av_freep (int **) ;

__attribute__((used)) static void cbs_h264_free_pps(void *opaque, uint8_t *content)
{
    H264RawPPS *pps = (H264RawPPS*)content;
    av_buffer_unref(&pps->slice_group_id_ref);
    av_freep(&content);
}
