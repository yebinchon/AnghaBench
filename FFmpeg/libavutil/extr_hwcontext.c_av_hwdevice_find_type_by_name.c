
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;


 int AV_HWDEVICE_TYPE_NONE ;
 int FF_ARRAY_ELEMS (scalar_t__*) ;
 scalar_t__* hw_type_names ;
 int strcmp (scalar_t__,char const*) ;

enum AVHWDeviceType av_hwdevice_find_type_by_name(const char *name)
{
    int type;
    for (type = 0; type < FF_ARRAY_ELEMS(hw_type_names); type++) {
        if (hw_type_names[type] && !strcmp(hw_type_names[type], name))
            return type;
    }
    return AV_HWDEVICE_TYPE_NONE;
}
