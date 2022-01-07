
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ HWDevice ;


 TYPE_1__** hw_devices ;
 int nb_hw_devices ;

__attribute__((used)) static HWDevice *hw_device_get_by_type(enum AVHWDeviceType type)
{
    HWDevice *found = ((void*)0);
    int i;
    for (i = 0; i < nb_hw_devices; i++) {
        if (hw_devices[i]->type == type) {
            if (found)
                return ((void*)0);
            found = hw_devices[i];
        }
    }
    return found;
}
