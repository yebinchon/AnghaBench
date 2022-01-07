
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_18__ {size_t audio_stream_idx; int frames; int ssnd; int form; scalar_t__ write_id3v2; } ;
struct TYPE_17__ {int block_align; } ;
struct TYPE_16__ {TYPE_2__* pb; TYPE_1__** streams; TYPE_5__* priv_data; } ;
struct TYPE_15__ {int seekable; } ;
struct TYPE_14__ {TYPE_4__* codecpar; } ;
typedef TYPE_2__ AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;
typedef TYPE_5__ AIFFOutputContext ;


 int AVIO_SEEKABLE_NORMAL ;
 int SEEK_SET ;
 int avio_flush (TYPE_2__*) ;
 int avio_seek (TYPE_2__*,int,int ) ;
 int avio_tell (TYPE_2__*) ;
 int avio_w8 (TYPE_2__*,int ) ;
 int avio_wb32 (TYPE_2__*,int) ;
 int put_id3v2_tags (TYPE_3__*,TYPE_5__*) ;

__attribute__((used)) static int aiff_write_trailer(AVFormatContext *s)
{
    int ret = 0;
    AVIOContext *pb = s->pb;
    AIFFOutputContext *aiff = s->priv_data;
    AVCodecParameters *par = s->streams[aiff->audio_stream_idx]->codecpar;


    int64_t file_size, end_size;
    end_size = file_size = avio_tell(pb);
    if (file_size & 1) {
        avio_w8(pb, 0);
        end_size++;
    }

    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {

        avio_seek(pb, aiff->frames, SEEK_SET);
        avio_wb32(pb, (file_size - aiff->ssnd - 12) / par->block_align);


        avio_seek(pb, aiff->ssnd, SEEK_SET);
        avio_wb32(pb, file_size - aiff->ssnd - 4);


        avio_seek(pb, end_size, SEEK_SET);


        if (aiff->write_id3v2)
            if ((ret = put_id3v2_tags(s, aiff)) < 0)
                return ret;


        file_size = avio_tell(pb);
        avio_seek(pb, aiff->form, SEEK_SET);
        avio_wb32(pb, file_size - aiff->form - 4);

        avio_flush(pb);
    }

    return ret;
}
