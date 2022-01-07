
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ first_pcr; int mux_rate; } ;
typedef TYPE_1__ MpegTSWrite ;
typedef int AVIOContext ;


 int PCR_TIME_BASE ;
 scalar_t__ av_rescale (scalar_t__,int,int ) ;
 scalar_t__ avio_tell (int *) ;

__attribute__((used)) static int64_t get_pcr(const MpegTSWrite *ts, AVIOContext *pb)
{
    return av_rescale(avio_tell(pb) + 11, 8 * PCR_TIME_BASE, ts->mux_rate) +
           ts->first_pcr;
}
