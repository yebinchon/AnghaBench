
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {scalar_t__ len; int size_pos; } ;
typedef TYPE_1__ ID3v2EncContext ;
typedef int AVIOContext ;


 int SEEK_SET ;
 int av_clip (int,int,scalar_t__) ;
 int avio_seek (int *,int ,int ) ;
 int avio_tell (int *) ;
 int ffio_fill (int *,int ,int) ;
 int id3v2_put_size (int *,scalar_t__) ;

void ff_id3v2_finish(ID3v2EncContext *id3, AVIOContext *pb,
                     int padding_bytes)
{
    int64_t cur_pos;

    if (padding_bytes < 0)
        padding_bytes = 10;







    padding_bytes = av_clip(padding_bytes, 10, 268435455 - id3->len);
    ffio_fill(pb, 0, padding_bytes);
    id3->len += padding_bytes;

    cur_pos = avio_tell(pb);
    avio_seek(pb, id3->size_pos, SEEK_SET);
    id3v2_put_size(pb, id3->len);
    avio_seek(pb, cur_pos, SEEK_SET);
}
