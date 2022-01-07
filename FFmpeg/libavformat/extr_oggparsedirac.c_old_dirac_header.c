
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char uint8_t ;
struct ogg_stream {char* buf; int pstart; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_8__ {TYPE_2__** streams; struct ogg* priv_data; } ;
struct TYPE_7__ {TYPE_1__* codecpar; } ;
struct TYPE_6__ {int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_DIRAC ;
 int AV_RB32 (char*) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int ,int ) ;

__attribute__((used)) static int old_dirac_header(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    AVStream *st = s->streams[idx];
    uint8_t *buf = os->buf + os->pstart;

    if (buf[0] != 'K')
        return 0;

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_DIRAC;
    avpriv_set_pts_info(st, 64, AV_RB32(buf+12), AV_RB32(buf+8));
    return 1;
}
