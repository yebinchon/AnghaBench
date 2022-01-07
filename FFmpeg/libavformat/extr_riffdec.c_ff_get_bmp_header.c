
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {int bits_per_coded_sample; scalar_t__ height; void* width; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;


 int avio_rl16 (int *) ;
 void* avio_rl32 (int *) ;

int ff_get_bmp_header(AVIOContext *pb, AVStream *st, uint32_t *size)
{
    int tag1;
    uint32_t size_ = avio_rl32(pb);
    if (size)
        *size = size_;
    st->codecpar->width = avio_rl32(pb);
    st->codecpar->height = (int32_t)avio_rl32(pb);
    avio_rl16(pb);
    st->codecpar->bits_per_coded_sample = avio_rl16(pb);
    tag1 = avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    return tag1;
}
