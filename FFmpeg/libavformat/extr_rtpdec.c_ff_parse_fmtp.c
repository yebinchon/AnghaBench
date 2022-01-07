
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int attr ;
typedef int PayloadContext ;
typedef int AVStream ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_free (char*) ;
 int av_log (int *,int ,char*) ;
 char* av_malloc (int) ;
 scalar_t__ ff_rtsp_next_attr_and_value (char const**,char*,int,char*,int) ;
 int strlen (char const*) ;

int ff_parse_fmtp(AVFormatContext *s,
                  AVStream *stream, PayloadContext *data, const char *p,
                  int (*parse_fmtp)(AVFormatContext *s,
                                    AVStream *stream,
                                    PayloadContext *data,
                                    const char *attr, const char *value))
{
    char attr[256];
    char *value;
    int res;
    int value_size = strlen(p) + 1;

    if (!(value = av_malloc(value_size))) {
        av_log(s, AV_LOG_ERROR, "Failed to allocate data for FMTP.\n");
        return AVERROR(ENOMEM);
    }


    while (*p && *p == ' ')
        p++;
    while (*p && *p != ' ')
        p++;
    while (*p && *p == ' ')
        p++;

    while (ff_rtsp_next_attr_and_value(&p,
                                       attr, sizeof(attr),
                                       value, value_size)) {
        res = parse_fmtp(s, stream, data, attr, value);
        if (res < 0 && res != AVERROR_PATCHWELCOME) {
            av_free(value);
            return res;
        }
    }
    av_free(value);
    return 0;
}
