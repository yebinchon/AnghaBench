
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct oggvorbis_private {int * packet; int vp; } ;
struct ogg_stream {struct oggvorbis_private* private; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_3__ {struct ogg* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;


 int av_freep (int *) ;
 int av_vorbis_parse_free (int *) ;

__attribute__((used)) static void vorbis_cleanup(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    struct oggvorbis_private *priv = os->private;
    int i;
    if (os->private) {
        av_vorbis_parse_free(&priv->vp);
        for (i = 0; i < 3; i++)
            av_freep(&priv->packet[i]);
    }
}
