
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int default_source_name; int default_sink_name; } ;
typedef TYPE_1__ pa_server_info ;
typedef int pa_context ;
struct TYPE_5__ {int error_code; void* default_device; scalar_t__ output; } ;
typedef TYPE_2__ PulseAudioDeviceList ;


 int AVERROR (int ) ;
 int ENOMEM ;
 void* av_strdup (int ) ;

__attribute__((used)) static void pulse_server_info_cb(pa_context *c, const pa_server_info *i, void *userdata)
{
    PulseAudioDeviceList *info = userdata;
    if (info->output)
        info->default_device = av_strdup(i->default_sink_name);
    else
        info->default_device = av_strdup(i->default_source_name);
    if (!info->default_device)
        info->error_code = AVERROR(ENOMEM);
}
