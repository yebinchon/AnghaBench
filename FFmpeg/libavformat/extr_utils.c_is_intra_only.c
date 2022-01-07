
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_3__ {scalar_t__ type; int props; } ;
typedef TYPE_1__ AVCodecDescriptor ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_PROP_INTRA_ONLY ;
 TYPE_1__* avcodec_descriptor_get (int) ;

__attribute__((used)) static int is_intra_only(enum AVCodecID id)
{
    const AVCodecDescriptor *d = avcodec_descriptor_get(id);
    if (!d)
        return 0;
    if (d->type == AVMEDIA_TYPE_VIDEO && !(d->props & AV_CODEC_PROP_INTRA_ONLY))
        return 0;
    return 1;
}
