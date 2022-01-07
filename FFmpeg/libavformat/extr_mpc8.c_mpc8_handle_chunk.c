
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int SEEK_SET ;

 int avio_seek (int *,scalar_t__,int ) ;
 int avio_skip (int *,scalar_t__) ;
 scalar_t__ avio_tell (int *) ;
 scalar_t__ ffio_read_varlen (int *) ;
 int mpc8_parse_seektable (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void mpc8_handle_chunk(AVFormatContext *s, int tag, int64_t chunk_pos, int64_t size)
{
    AVIOContext *pb = s->pb;
    int64_t pos, off;

    switch(tag){
    case 128:
        pos = avio_tell(pb) + size;
        off = ffio_read_varlen(pb);
        mpc8_parse_seektable(s, chunk_pos + off);
        avio_seek(pb, pos, SEEK_SET);
        break;
    default:
        avio_skip(pb, size);
    }
}
