
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;


 int AV_HWDEVICE_TYPE_NONE ;
 int FF_ARRAY_ELEMS (char const**) ;
 char const** hw_type_names ;

const char *av_hwdevice_get_type_name(enum AVHWDeviceType type)
{
    if (type > AV_HWDEVICE_TYPE_NONE &&
        type < FF_ARRAY_ELEMS(hw_type_names))
        return hw_type_names[type];
    else
        return ((void*)0);
}
