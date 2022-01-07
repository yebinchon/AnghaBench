
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ogg_stream {int flags; int pflags; scalar_t__ keyframe_seek; int * codec; } ;
struct ogg {struct ogg_stream* streams; } ;
typedef scalar_t__ int64_t ;
struct TYPE_7__ {int * pb; struct ogg* priv_data; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_KEY ;
 int OGG_FLAG_BOS ;
 int OGG_FLAG_EOS ;
 int SEEK_SET ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 int ff_ogm_video_codec ;
 scalar_t__ ogg_calc_pts (TYPE_1__*,int,int *) ;
 int ogg_packet (TYPE_1__*,int*,int*,int*,scalar_t__*) ;
 int ogg_reset (TYPE_1__*) ;
 int ogg_validate_keyframe (TYPE_1__*,int,int,int) ;

__attribute__((used)) static int64_t ogg_read_timestamp(AVFormatContext *s, int stream_index,
                                  int64_t *pos_arg, int64_t pos_limit)
{
    struct ogg *ogg = s->priv_data;
    AVIOContext *bc = s->pb;
    int64_t pts = AV_NOPTS_VALUE;
    int64_t keypos = -1;
    int i;
    int pstart, psize;
    avio_seek(bc, *pos_arg, SEEK_SET);
    ogg_reset(s);

    while ( avio_tell(bc) <= pos_limit
           && !ogg_packet(s, &i, &pstart, &psize, pos_arg)) {
        if (i == stream_index) {
            struct ogg_stream *os = ogg->streams + stream_index;

            if ( (os->flags & OGG_FLAG_EOS)
                && !(os->flags & OGG_FLAG_BOS)
                && os->codec == &ff_ogm_video_codec)
                continue;
            pts = ogg_calc_pts(s, i, ((void*)0));
            ogg_validate_keyframe(s, i, pstart, psize);
            if (os->pflags & AV_PKT_FLAG_KEY) {
                keypos = *pos_arg;
            } else if (os->keyframe_seek) {


                if (keypos >= 0)
                    *pos_arg = keypos;
                else
                    pts = AV_NOPTS_VALUE;
            }
        }
        if (pts != AV_NOPTS_VALUE)
            break;
    }
    ogg_reset(s);
    return pts;
}
