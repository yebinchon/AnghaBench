
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int description; int name; } ;
typedef TYPE_1__ pa_sink_info ;
typedef int pa_context ;


 int pulse_add_detected_device (void*,int ,int ) ;

__attribute__((used)) static void pulse_audio_sink_device_cb(pa_context *c, const pa_sink_info *dev,
                                       int eol, void *userdata)
{
    if (!eol)
        pulse_add_detected_device(userdata, dev->name, dev->description);
}
