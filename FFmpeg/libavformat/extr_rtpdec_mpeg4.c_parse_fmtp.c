
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {long long min; long long max; } ;
struct TYPE_10__ {scalar_t__ type; int offset; TYPE_1__ range; scalar_t__ str; } ;
struct TYPE_9__ {scalar_t__ codec_id; } ;
struct TYPE_8__ {TYPE_3__* codecpar; } ;
typedef int PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;
typedef TYPE_3__ AVCodecParameters ;


 scalar_t__ ATTR_NAME_TYPE_INT ;
 scalar_t__ ATTR_NAME_TYPE_STR ;
 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_CODEC_ID_AAC ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 TYPE_6__* attr_names ;
 int av_log (int *,int ,char*,char const*,...) ;
 int av_strcasecmp (char const*,scalar_t__) ;
 char* av_strdup (char const*) ;
 int parse_fmtp_config (TYPE_3__*,char const*) ;
 int strcmp (char const*,char*) ;
 long long strtoll (char const*,char**,int) ;

__attribute__((used)) static int parse_fmtp(AVFormatContext *s,
                      AVStream *stream, PayloadContext *data,
                      const char *attr, const char *value)
{
    AVCodecParameters *par = stream->codecpar;
    int res, i;

    if (!strcmp(attr, "config")) {
        res = parse_fmtp_config(par, value);

        if (res < 0)
            return res;
    }

    if (par->codec_id == AV_CODEC_ID_AAC) {

        for (i = 0; attr_names[i].str; ++i) {
            if (!av_strcasecmp(attr, attr_names[i].str)) {
                if (attr_names[i].type == ATTR_NAME_TYPE_INT) {
                    char *end_ptr = ((void*)0);
                    long long int val = strtoll(value, &end_ptr, 10);
                    if (end_ptr == value || end_ptr[0] != '\0') {
                        av_log(s, AV_LOG_ERROR,
                               "The %s field value is not a valid number: %s\n",
                               attr, value);
                        return AVERROR_INVALIDDATA;
                    }
                    if (val < attr_names[i].range.min ||
                        val > attr_names[i].range.max) {
                        av_log(s, AV_LOG_ERROR,
                            "fmtp field %s should be in range [%d,%d] (provided value: %lld)",
                            attr, attr_names[i].range.min, attr_names[i].range.max, val);
                        return AVERROR_INVALIDDATA;
                    }

                    *(int *)((char *)data+
                        attr_names[i].offset) = (int) val;
                } else if (attr_names[i].type == ATTR_NAME_TYPE_STR) {
                    char *val = av_strdup(value);
                    if (!val)
                        return AVERROR(ENOMEM);
                    *(char **)((char *)data+
                        attr_names[i].offset) = val;
                }
            }
        }
    }
    return 0;
}
