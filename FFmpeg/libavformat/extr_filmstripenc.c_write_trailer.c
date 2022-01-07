
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__** streams; int * pb; TYPE_3__* priv_data; } ;
struct TYPE_8__ {int den; int num; } ;
struct TYPE_10__ {TYPE_2__ time_base; TYPE_1__* codecpar; } ;
struct TYPE_9__ {int nb_frames; } ;
struct TYPE_7__ {int width; int height; } ;
typedef TYPE_3__ FilmstripMuxContext ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int RAND_TAG ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int ) ;

__attribute__((used)) static int write_trailer(AVFormatContext *s)
{
    FilmstripMuxContext *film = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st = s->streams[0];
    int i;

    avio_wb32(pb, RAND_TAG);
    avio_wb32(pb, film->nb_frames);
    avio_wb16(pb, 0);
    avio_wb16(pb, 0);
    avio_wb16(pb, st->codecpar->width);
    avio_wb16(pb, st->codecpar->height);
    avio_wb16(pb, 0);

    avio_wb16(pb, st->time_base.den / st->time_base.num);
    for (i = 0; i < 16; i++)
        avio_w8(pb, 0x00);

    return 0;
}
