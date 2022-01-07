
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_16__ {int seekable; } ;
struct TYPE_13__ {scalar_t__ buf_ptr; scalar_t__ buffer; } ;
struct TYPE_15__ {int index_ptr; scalar_t__ data_offset; scalar_t__ is_streamed; scalar_t__ next_start_sec; int maximum_packet; scalar_t__ end_sec; TYPE_1__ pb; } ;
struct TYPE_14__ {TYPE_7__* pb; TYPE_3__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ ASFContext ;


 int AVIO_SEEKABLE_NORMAL ;
 int SEEK_SET ;
 int asf_write_header1 (TYPE_2__*,scalar_t__,scalar_t__) ;
 int asf_write_index (TYPE_2__*,int ,int ,scalar_t__) ;
 int av_freep (int *) ;
 int avio_flush (TYPE_7__*) ;
 int avio_seek (TYPE_7__*,int ,int ) ;
 scalar_t__ avio_tell (TYPE_7__*) ;
 int flush_packet (TYPE_2__*) ;
 int put_chunk (TYPE_2__*,int,int ,int ) ;
 int update_index (TYPE_2__*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int asf_write_trailer(AVFormatContext *s)
{
    ASFContext *asf = s->priv_data;
    int64_t file_size, data_size;
    int ret;


    if (asf->pb.buf_ptr > asf->pb.buffer)
        flush_packet(s);


    data_size = avio_tell(s->pb);
    if (!asf->is_streamed && asf->next_start_sec) {
        if ((ret = update_index(s, asf->end_sec + 1, 0, 0, 0)) < 0)
            return ret;
        asf_write_index(s, asf->index_ptr, asf->maximum_packet, asf->next_start_sec);
    }
    avio_flush(s->pb);

    if (asf->is_streamed || !(s->pb->seekable & AVIO_SEEKABLE_NORMAL)) {
        put_chunk(s, 0x4524, 0, 0);
    } else {

        file_size = avio_tell(s->pb);
        avio_seek(s->pb, 0, SEEK_SET);
        asf_write_header1(s, file_size, data_size - asf->data_offset);
    }

    av_freep(&asf->index_ptr);
    return 0;
}
