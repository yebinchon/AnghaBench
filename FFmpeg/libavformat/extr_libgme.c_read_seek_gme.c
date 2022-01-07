
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int music_emu; } ;
typedef TYPE_1__ GMEContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_EXTERNAL ;
 int gme_seek (int ,int) ;

__attribute__((used)) static int read_seek_gme(AVFormatContext *s, int stream_idx, int64_t ts, int flags)
{
    GMEContext *gme = s->priv_data;
    if (!gme_seek(gme->music_emu, (int)ts))
        return AVERROR_EXTERNAL;
    return 0;
}
