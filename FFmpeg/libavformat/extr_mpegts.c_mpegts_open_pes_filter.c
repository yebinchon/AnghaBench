
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* opaque; int * pes_cb; } ;
struct TYPE_6__ {TYPE_2__ pes_filter; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef int PESCallback ;
typedef TYPE_2__ MpegTSPESFilter ;
typedef TYPE_3__ MpegTSFilter ;
typedef int MpegTSContext ;


 int MPEGTS_PES ;
 TYPE_3__* mpegts_open_filter (int *,unsigned int,int ) ;

__attribute__((used)) static MpegTSFilter *mpegts_open_pes_filter(MpegTSContext *ts, unsigned int pid,
                                            PESCallback *pes_cb,
                                            void *opaque)
{
    MpegTSFilter *filter;
    MpegTSPESFilter *pes;

    if (!(filter = mpegts_open_filter(ts, pid, MPEGTS_PES)))
        return ((void*)0);

    pes = &filter->u.pes_filter;
    pes->pes_cb = pes_cb;
    pes->opaque = opaque;
    return filter;
}
