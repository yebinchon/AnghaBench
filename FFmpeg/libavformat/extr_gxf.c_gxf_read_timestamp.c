
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 int SEEK_SET ;
 scalar_t__ avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 scalar_t__ gxf_resync_media (TYPE_1__*,scalar_t__,int,int) ;

__attribute__((used)) static int64_t gxf_read_timestamp(AVFormatContext *s, int stream_index,
                                  int64_t *pos, int64_t pos_limit) {
    AVIOContext *pb = s->pb;
    int64_t res;
    if (avio_seek(pb, *pos, SEEK_SET) < 0)
        return AV_NOPTS_VALUE;
    res = gxf_resync_media(s, pos_limit - *pos, -1, -1);
    *pos = avio_tell(pb);
    return res;
}
