
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;


 int AV_HWDEVICE_TYPE_NONE ;
 char* av_hwdevice_get_type_name (int) ;
 int av_hwdevice_iterate_types (int) ;
 int exit_program (int ) ;
 int hw_device_init_from_string (char const*,int *) ;
 int printf (char*,...) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int opt_init_hw_device(void *optctx, const char *opt, const char *arg)
{
    if (!strcmp(arg, "list")) {
        enum AVHWDeviceType type = AV_HWDEVICE_TYPE_NONE;
        printf("Supported hardware device types:\n");
        while ((type = av_hwdevice_iterate_types(type)) !=
               AV_HWDEVICE_TYPE_NONE)
            printf("%s\n", av_hwdevice_get_type_name(type));
        printf("\n");
        exit_program(0);
    } else {
        return hw_device_init_from_string(arg, ((void*)0));
    }
}
