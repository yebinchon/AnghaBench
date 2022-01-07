
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int key_frame; int metadata; } ;
struct TYPE_10__ {int frame_packing; } ;
struct TYPE_12__ {TYPE_1__ sei; } ;
struct TYPE_11__ {scalar_t__ sei_recovery_frame_cnt; TYPE_4__* f; } ;
typedef TYPE_2__ H264Picture ;
typedef TYPE_3__ H264Context ;
typedef TYPE_4__ AVFrame ;


 int av_dict_set (int *,char*,int ,int ) ;
 int av_frame_ref (TYPE_4__*,TYPE_4__*) ;
 int ff_h264_sei_stereo_mode (int *) ;

__attribute__((used)) static int output_frame(H264Context *h, AVFrame *dst, H264Picture *srcp)
{
    AVFrame *src = srcp->f;
    int ret;

    ret = av_frame_ref(dst, src);
    if (ret < 0)
        return ret;

    av_dict_set(&dst->metadata, "stereo_mode", ff_h264_sei_stereo_mode(&h->sei.frame_packing), 0);

    if (srcp->sei_recovery_frame_cnt == 0)
        dst->key_frame = 1;

    return 0;
}
