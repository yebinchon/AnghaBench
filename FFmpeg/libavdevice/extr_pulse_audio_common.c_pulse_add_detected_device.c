
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {void* device_name; void* device_description; } ;
struct TYPE_9__ {int error_code; TYPE_1__* devices; } ;
struct TYPE_8__ {int nb_devices; int devices; } ;
typedef TYPE_2__ PulseAudioDeviceList ;
typedef TYPE_3__ AVDeviceInfo ;


 void* AVERROR (int ) ;
 int ENOMEM ;
 int av_dynarray_add_nofree (int *,int *,TYPE_3__*) ;
 int av_free (TYPE_3__*) ;
 int av_freep (void**) ;
 TYPE_3__* av_mallocz (int) ;
 void* av_strdup (char const*) ;

__attribute__((used)) static void pulse_add_detected_device(PulseAudioDeviceList *info,
                                      const char *name, const char *description)
{
    int ret;
    AVDeviceInfo *new_device = ((void*)0);

    if (info->error_code)
        return;

    new_device = av_mallocz(sizeof(AVDeviceInfo));
    if (!new_device) {
        info->error_code = AVERROR(ENOMEM);
        return;
    }

    new_device->device_description = av_strdup(description);
    new_device->device_name = av_strdup(name);

    if (!new_device->device_description || !new_device->device_name) {
        info->error_code = AVERROR(ENOMEM);
        goto fail;
    }

    if ((ret = av_dynarray_add_nofree(&info->devices->devices,
                                      &info->devices->nb_devices, new_device)) < 0) {
        info->error_code = ret;
        goto fail;
    }
    return;

  fail:
    av_freep(&new_device->device_description);
    av_freep(&new_device->device_name);
    av_free(new_device);

}
