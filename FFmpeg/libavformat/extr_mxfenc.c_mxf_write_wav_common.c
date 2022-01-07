
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_10__ {int * pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int block_align; int sample_rate; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int mxf_write_generic_sound_common (TYPE_3__*,TYPE_2__*,int const) ;
 int mxf_write_local_tag (int *,int,int) ;

__attribute__((used)) static int64_t mxf_write_wav_common(AVFormatContext *s, AVStream *st, const UID key)
{
    AVIOContext *pb = s->pb;
    int64_t pos = mxf_write_generic_sound_common(s, st, key);

    mxf_write_local_tag(pb, 2, 0x3D0A);
    avio_wb16(pb, st->codecpar->block_align);


    mxf_write_local_tag(pb, 4, 0x3D09);
    avio_wb32(pb, st->codecpar->block_align*st->codecpar->sample_rate);

    return pos;
}
