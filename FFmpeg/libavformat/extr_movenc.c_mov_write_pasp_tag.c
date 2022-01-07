
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int num; int den; } ;
struct TYPE_8__ {TYPE_2__* par; } ;
struct TYPE_6__ {int den; int num; } ;
struct TYPE_7__ {TYPE_1__ sample_aspect_ratio; } ;
typedef TYPE_3__ MOVTrack ;
typedef TYPE_4__ AVRational ;
typedef int AVIOContext ;


 int INT_MAX ;
 int av_reduce (int*,int*,int ,int ,int ) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_pasp_tag(AVIOContext *pb, MOVTrack *track)
{
    AVRational sar;
    av_reduce(&sar.num, &sar.den, track->par->sample_aspect_ratio.num,
              track->par->sample_aspect_ratio.den, INT_MAX);

    avio_wb32(pb, 16);
    ffio_wfourcc(pb, "pasp");
    avio_wb32(pb, sar.num);
    avio_wb32(pb, sar.den);
    return 16;
}
