
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PayloadContext ;
typedef int AVStream ;
typedef int AVFormatContext ;


 int atoi (char const*) ;
 int avpriv_request_sample (int *,char*) ;
 int parse_fmtp_config (int *,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int parse_fmtp(AVFormatContext *s,
                      AVStream *stream, PayloadContext *data,
                      const char *attr, const char *value)
{
    int res;

    if (!strcmp(attr, "config")) {
        res = parse_fmtp_config(stream, value);
        if (res < 0)
            return res;
    } else if (!strcmp(attr, "cpresent")) {
        int cpresent = atoi(value);
        if (cpresent != 0)
            avpriv_request_sample(s,
                                  "RTP MP4A-LATM with in-band configuration");
    }

    return 0;
}
