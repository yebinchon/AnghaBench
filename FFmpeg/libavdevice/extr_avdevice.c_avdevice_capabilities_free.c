
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* oformat; TYPE_2__* iformat; } ;
struct TYPE_8__ {int (* free_device_capabilities ) (TYPE_3__*,int *) ;} ;
struct TYPE_7__ {int (* free_device_capabilities ) (TYPE_3__*,int *) ;} ;
typedef TYPE_3__ AVFormatContext ;
typedef int AVDeviceCapabilitiesQuery ;


 int av_assert0 (int) ;
 int av_freep (int **) ;
 int stub1 (TYPE_3__*,int *) ;
 int stub2 (TYPE_3__*,int *) ;

void avdevice_capabilities_free(AVDeviceCapabilitiesQuery **caps, AVFormatContext *s)
{
    if (!s || !caps || !(*caps))
        return;
    av_assert0(s->iformat || s->oformat);
    if (s->iformat) {
        if (s->iformat->free_device_capabilities)
            s->iformat->free_device_capabilities(s, *caps);
    } else {
        if (s->oformat->free_device_capabilities)
            s->oformat->free_device_capabilities(s, *caps);
    }
    av_freep(caps);
}
