
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MpegTSFilter ;
typedef int MpegTSContext ;


 int MPEGTS_PCR ;
 int * mpegts_open_filter (int *,unsigned int,int ) ;

__attribute__((used)) static MpegTSFilter *mpegts_open_pcr_filter(MpegTSContext *ts, unsigned int pid)
{
    return mpegts_open_filter(ts, pid, MPEGTS_PCR);
}
