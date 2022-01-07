
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
struct TYPE_18__ {int block_align; int channels; int codec_id; } ;
struct TYPE_17__ {TYPE_1__** streams; TYPE_3__* pb; TYPE_2__* priv_data; } ;
struct TYPE_16__ {int seekable; } ;
struct TYPE_15__ {int data; int size_entries_used; int packets; int pkt_sizes; scalar_t__ size_buffer_size; } ;
struct TYPE_14__ {TYPE_5__* codecpar; } ;
typedef TYPE_2__ CAFContext ;
typedef TYPE_3__ AVIOContext ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVCodecParameters ;


 int AVIO_SEEKABLE_NORMAL ;
 int SEEK_SET ;
 int av_freep (int *) ;
 int avio_flush (TYPE_3__*) ;
 int avio_seek (TYPE_3__*,int,int ) ;
 int avio_tell (TYPE_3__*) ;
 int avio_wb32 (TYPE_3__*,int ) ;
 int avio_wb64 (TYPE_3__*,int) ;
 int avio_write (TYPE_3__*,int ,int) ;
 int ffio_wfourcc (TYPE_3__*,char*) ;
 int samples_per_packet (int ,int ,int ) ;

__attribute__((used)) static int caf_write_trailer(AVFormatContext *s)
{
    CAFContext *caf = s->priv_data;
    AVIOContext *pb = s->pb;
    AVCodecParameters *par = s->streams[0]->codecpar;

    if (pb->seekable & AVIO_SEEKABLE_NORMAL) {
        int64_t file_size = avio_tell(pb);

        avio_seek(pb, caf->data, SEEK_SET);
        avio_wb64(pb, file_size - caf->data - 8);
        avio_seek(pb, file_size, SEEK_SET);
        if (!par->block_align) {
            ffio_wfourcc(pb, "pakt");
            avio_wb64(pb, caf->size_entries_used + 24);
            avio_wb64(pb, caf->packets);
            avio_wb64(pb, caf->packets * samples_per_packet(par->codec_id, par->channels, par->block_align));
            avio_wb32(pb, 0);
            avio_wb32(pb, 0);
            avio_write(pb, caf->pkt_sizes, caf->size_entries_used);
            caf->size_buffer_size = 0;
        }
        avio_flush(pb);
    }
    av_freep(&caf->pkt_sizes);
    return 0;
}
