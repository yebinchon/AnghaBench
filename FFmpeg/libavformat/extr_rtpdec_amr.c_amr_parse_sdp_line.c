
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * streams; } ;
struct TYPE_8__ {int channels; scalar_t__ interleaving; scalar_t__ crc; int octet_align; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ AVFormatContext ;


 int AV_LOG_ERROR ;
 int amr_parse_fmtp ;
 int av_log (TYPE_2__*,int ,char*) ;
 scalar_t__ av_strstart (char const*,char*,char const**) ;
 int ff_parse_fmtp (TYPE_2__*,int ,TYPE_1__*,char const*,int ) ;

__attribute__((used)) static int amr_parse_sdp_line(AVFormatContext *s, int st_index,
                              PayloadContext *data, const char *line)
{
    const char *p;
    int ret;

    if (st_index < 0)
        return 0;






    if (av_strstart(line, "fmtp:", &p)) {
        ret = ff_parse_fmtp(s, s->streams[st_index], data, p, amr_parse_fmtp);
        if (!data->octet_align || data->crc ||
            data->interleaving || data->channels != 1) {
            av_log(s, AV_LOG_ERROR, "Unsupported RTP/AMR configuration!\n");
            return -1;
        }
        return ret;
    }
    return 0;
}
