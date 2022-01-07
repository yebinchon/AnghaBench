
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* channels; void* interleaving; void* crc; void* octet_align; } ;
typedef TYPE_1__ PayloadContext ;
typedef int AVStream ;
typedef int AVFormatContext ;


 int AV_LOG_WARNING ;
 void* atoi (char const*) ;
 int av_log (int *,int ,char*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int amr_parse_fmtp(AVFormatContext *s,
                          AVStream *stream, PayloadContext *data,
                          const char *attr, const char *value)
{




    if (!strcmp(value, "")) {
        av_log(s, AV_LOG_WARNING, "AMR fmtp attribute %s had "
                                  "nonstandard empty value\n", attr);
        value = "1";
    }
    if (!strcmp(attr, "octet-align"))
        data->octet_align = atoi(value);
    else if (!strcmp(attr, "crc"))
        data->crc = atoi(value);
    else if (!strcmp(attr, "interleaving"))
        data->interleaving = atoi(value);
    else if (!strcmp(attr, "channels"))
        data->channels = atoi(value);
    return 0;
}
