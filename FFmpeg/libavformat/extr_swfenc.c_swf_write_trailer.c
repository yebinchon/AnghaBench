
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ codec_type; } ;
struct TYPE_16__ {int nb_streams; TYPE_3__* pb; TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int seekable; } ;
struct TYPE_14__ {int duration_pos; int vframes_pos; int video_frame_number; int audio_fifo; } ;
struct TYPE_13__ {TYPE_5__* codecpar; } ;
typedef TYPE_2__ SWFContext ;
typedef TYPE_3__ AVIOContext ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVCodecParameters ;


 int AVIO_SEEKABLE_NORMAL ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int SEEK_SET ;
 int TAG_END ;
 int av_fifo_freep (int *) ;
 int avio_seek (TYPE_3__*,int,int ) ;
 int avio_tell (TYPE_3__*) ;
 int avio_wl16 (TYPE_3__*,int ) ;
 int avio_wl32 (TYPE_3__*,int) ;
 int put_swf_end_tag (TYPE_4__*) ;
 int put_swf_tag (TYPE_4__*,int ) ;

__attribute__((used)) static int swf_write_trailer(AVFormatContext *s)
{
    SWFContext *swf = s->priv_data;
    AVIOContext *pb = s->pb;
    AVCodecParameters *par, *video_par;
    int file_size, i;

    video_par = ((void*)0);
    for(i=0;i<s->nb_streams;i++) {
        par = s->streams[i]->codecpar;
        if (par->codec_type == AVMEDIA_TYPE_VIDEO)
            video_par = par;
        else {
            av_fifo_freep(&swf->audio_fifo);
        }
    }

    put_swf_tag(s, TAG_END);
    put_swf_end_tag(s);


    if ((s->pb->seekable & AVIO_SEEKABLE_NORMAL) && video_par) {
        file_size = avio_tell(pb);
        avio_seek(pb, 4, SEEK_SET);
        avio_wl32(pb, file_size);
        avio_seek(pb, swf->duration_pos, SEEK_SET);
        avio_wl16(pb, swf->video_frame_number);
        if (swf->vframes_pos) {
        avio_seek(pb, swf->vframes_pos, SEEK_SET);
        avio_wl16(pb, swf->video_frame_number);
        }
        avio_seek(pb, file_size, SEEK_SET);
    }
    return 0;
}
