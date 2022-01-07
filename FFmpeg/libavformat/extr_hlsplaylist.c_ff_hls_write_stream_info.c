
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {scalar_t__ height; int width; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;


 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*) ;
 int avio_printf (int *,char*,...) ;
 scalar_t__ strlen (char*) ;

void ff_hls_write_stream_info(AVStream *st, AVIOContext *out,
                              int bandwidth, const char *filename, char *agroup,
                              char *codecs, char *ccgroup) {

    if (!out || !filename)
        return;

    if (!bandwidth) {
        av_log(((void*)0), AV_LOG_WARNING,
                "Bandwidth info not available, set audio and video bitrates\n");
        return;
    }

    avio_printf(out, "#EXT-X-STREAM-INF:BANDWIDTH=%d", bandwidth);
    if (st && st->codecpar->width > 0 && st->codecpar->height > 0)
        avio_printf(out, ",RESOLUTION=%dx%d", st->codecpar->width,
                st->codecpar->height);
    if (codecs && strlen(codecs) > 0)
        avio_printf(out, ",CODECS=\"%s\"", codecs);
    if (agroup && strlen(agroup) > 0)
        avio_printf(out, ",AUDIO=\"group_%s\"", agroup);
    if (ccgroup && strlen(ccgroup) > 0)
        avio_printf(out, ",CLOSED-CAPTIONS=\"%s\"", ccgroup);
    avio_printf(out, "\n%s\n\n", filename);
}
