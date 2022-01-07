
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {int block_align; } ;
typedef int PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int atoi (char const*) ;
 int av_log (int *,int ,char*,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int ilbc_parse_fmtp(AVFormatContext *s,
                           AVStream *stream, PayloadContext *data,
                           const char *attr, const char *value)
{
    if (!strcmp(attr, "mode")) {
        int mode = atoi(value);
        switch (mode) {
        case 20:
            stream->codecpar->block_align = 38;
            break;
        case 30:
            stream->codecpar->block_align = 50;
            break;
        default:
            av_log(s, AV_LOG_ERROR, "Unsupported iLBC mode %d\n", mode);
            return AVERROR(EINVAL);
        }
    }
    return 0;
}
