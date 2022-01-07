
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__** buf; } ;
struct TYPE_8__ {int source; } ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef TYPE_2__ HWMapDescriptor ;
typedef TYPE_3__ AVFrame ;


 int av_frame_ref (int ,TYPE_3__ const*) ;
 int av_frame_unref (int ) ;

int ff_hwframe_map_replace(AVFrame *dst, const AVFrame *src)
{
    HWMapDescriptor *hwmap = (HWMapDescriptor*)dst->buf[0]->data;
    av_frame_unref(hwmap->source);
    return av_frame_ref(hwmap->source, src);
}
