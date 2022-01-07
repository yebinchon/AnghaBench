
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int nb_streams; TYPE_1__** streams; TYPE_3__* pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int seekable; } ;
struct TYPE_12__ {int nb_images; int images; scalar_t__ current_image; } ;
struct TYPE_11__ {int codecpar; } ;
typedef TYPE_2__ IcoMuxContext ;
typedef TYPE_3__ AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_SEEKABLE_NORMAL ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int av_log (TYPE_4__*,int ,char*) ;
 int av_mallocz_array (int,int) ;
 int avio_flush (TYPE_3__*) ;
 int avio_skip (TYPE_3__*,int) ;
 int avio_wl16 (TYPE_3__*,int) ;
 int ico_check_attributes (TYPE_4__*,int ) ;

__attribute__((used)) static int ico_write_header(AVFormatContext *s)
{
    IcoMuxContext *ico = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret;
    int i;

    if (!(pb->seekable & AVIO_SEEKABLE_NORMAL)) {
        av_log(s, AV_LOG_ERROR, "Output is not seekable\n");
        return AVERROR(EINVAL);
    }

    ico->current_image = 0;
    ico->nb_images = s->nb_streams;

    avio_wl16(pb, 0);
    avio_wl16(pb, 1);
    avio_skip(pb, 2);

    for (i = 0; i < s->nb_streams; i++) {
        if (ret = ico_check_attributes(s, s->streams[i]->codecpar))
            return ret;


        avio_skip(pb, 16);
    }

    ico->images = av_mallocz_array(ico->nb_images, sizeof(IcoMuxContext));
    if (!ico->images)
        return AVERROR(ENOMEM);

    avio_flush(pb);

    return 0;
}
