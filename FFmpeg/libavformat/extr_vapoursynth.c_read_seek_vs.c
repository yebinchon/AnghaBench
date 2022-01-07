
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int current_frame; int is_cfr; } ;
typedef TYPE_2__ VSContext ;
struct TYPE_7__ {TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_5__ {int duration; } ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int FFMAX (int ,int ) ;
 int FFMIN (int ,int ) ;

__attribute__((used)) static int read_seek_vs(AVFormatContext *s, int stream_idx, int64_t ts, int flags)
{
    VSContext *vs = s->priv_data;

    if (!vs->is_cfr)
        return AVERROR(ENOSYS);

    vs->current_frame = FFMIN(FFMAX(0, ts), s->streams[0]->duration);
    return 0;
}
