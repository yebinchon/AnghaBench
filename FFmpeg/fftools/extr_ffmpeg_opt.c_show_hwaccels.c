
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_2__ {char* name; } ;


 int AV_HWDEVICE_TYPE_NONE ;
 char* av_hwdevice_get_type_name (int) ;
 int av_hwdevice_iterate_types (int) ;
 TYPE_1__* hwaccels ;
 int printf (char*,...) ;

__attribute__((used)) static int show_hwaccels(void *optctx, const char *opt, const char *arg)
{
    enum AVHWDeviceType type = AV_HWDEVICE_TYPE_NONE;
    int i;

    printf("Hardware acceleration methods:\n");
    while ((type = av_hwdevice_iterate_types(type)) !=
           AV_HWDEVICE_TYPE_NONE)
        printf("%s\n", av_hwdevice_get_type_name(type));
    for (i = 0; hwaccels[i].name; i++)
        printf("%s\n", hwaccels[i].name);
    printf("\n");
    return 0;
}
