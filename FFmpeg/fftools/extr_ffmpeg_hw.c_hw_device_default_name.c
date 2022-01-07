
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;


 int av_freep (char**) ;
 char* av_hwdevice_get_type_name (int) ;
 char* av_malloc (size_t) ;
 int hw_device_get_by_name (char*) ;
 int snprintf (char*,size_t,char*,char const*,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *hw_device_default_name(enum AVHWDeviceType type)
{



    const char *type_name = av_hwdevice_get_type_name(type);
    char *name;
    size_t index_pos;
    int index, index_limit = 1000;
    index_pos = strlen(type_name);
    name = av_malloc(index_pos + 4);
    if (!name)
        return ((void*)0);
    for (index = 0; index < index_limit; index++) {
        snprintf(name, index_pos + 4, "%s%d", type_name, index);
        if (!hw_device_get_by_name(name))
            break;
    }
    if (index >= index_limit) {
        av_freep(&name);
        return ((void*)0);
    }
    return name;
}
