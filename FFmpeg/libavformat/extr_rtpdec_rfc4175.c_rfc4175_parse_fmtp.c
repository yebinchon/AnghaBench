
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* depth; int sampling; void* height; void* width; } ;
typedef TYPE_1__ PayloadContext ;
typedef int AVStream ;
typedef int AVFormatContext ;


 void* atoi (char const*) ;
 int av_strdup (char const*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int rfc4175_parse_fmtp(AVFormatContext *s, AVStream *stream,
                              PayloadContext *data, const char *attr,
                              const char *value)
{
    if (!strncmp(attr, "width", 5))
        data->width = atoi(value);
    else if (!strncmp(attr, "height", 6))
        data->height = atoi(value);
    else if (!strncmp(attr, "sampling", 8))
        data->sampling = av_strdup(value);
    else if (!strncmp(attr, "depth", 5))
        data->depth = atoi(value);

    return 0;
}
