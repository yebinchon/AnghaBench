
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef enum AMF_SURFACE_FORMAT { ____Placeholder_AMF_SURFACE_FORMAT } AMF_SURFACE_FORMAT ;
struct TYPE_3__ {int av_format; int amf_format; } ;


 int AMF_SURFACE_UNKNOWN ;
 int amf_countof (TYPE_1__*) ;
 TYPE_1__* format_map ;

__attribute__((used)) static enum AMF_SURFACE_FORMAT amf_av_to_amf_format(enum AVPixelFormat fmt)
{
    int i;
    for (i = 0; i < amf_countof(format_map); i++) {
        if (format_map[i].av_format == fmt) {
            return format_map[i].amf_format;
        }
    }
    return AMF_SURFACE_UNKNOWN;
}
