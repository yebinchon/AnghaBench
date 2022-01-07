
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int AVFMT_FLAG_BITEXACT ;
 int LIBAVFORMAT_VERSION_MAJOR ;
 int LIBAVFORMAT_VERSION_MICRO ;
 int LIBAVFORMAT_VERSION_MINOR ;
 int avio_wb16 (int *,int ) ;

__attribute__((used)) static void store_version(AVFormatContext *s){
    AVIOContext *pb = s->pb;

    if (s->flags & AVFMT_FLAG_BITEXACT) {
        avio_wb16(pb, 0);
        avio_wb16(pb, 0);
        avio_wb16(pb, 0);
    } else {
        avio_wb16(pb, LIBAVFORMAT_VERSION_MAJOR);
        avio_wb16(pb, LIBAVFORMAT_VERSION_MINOR);
        avio_wb16(pb, LIBAVFORMAT_VERSION_MICRO);
    }
    avio_wb16(pb, 0);
    avio_wb16(pb, 0);
}
