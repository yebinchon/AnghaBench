
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int check_crc; int last_ver; int section_buf; void* opaque; int * section_cb; } ;
struct TYPE_7__ {TYPE_2__ section_filter; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef int SectionCallback ;
typedef TYPE_2__ MpegTSSectionFilter ;
typedef TYPE_3__ MpegTSFilter ;
typedef int MpegTSContext ;


 int MAX_SECTION_SIZE ;
 int MPEGTS_SECTION ;
 int av_free (TYPE_3__*) ;
 int av_mallocz (int ) ;
 TYPE_3__* mpegts_open_filter (int *,unsigned int,int ) ;

__attribute__((used)) static MpegTSFilter *mpegts_open_section_filter(MpegTSContext *ts,
                                                unsigned int pid,
                                                SectionCallback *section_cb,
                                                void *opaque,
                                                int check_crc)
{
    MpegTSFilter *filter;
    MpegTSSectionFilter *sec;

    if (!(filter = mpegts_open_filter(ts, pid, MPEGTS_SECTION)))
        return ((void*)0);
    sec = &filter->u.section_filter;
    sec->section_cb = section_cb;
    sec->opaque = opaque;
    sec->section_buf = av_mallocz(MAX_SECTION_SIZE);
    sec->check_crc = check_crc;
    sec->last_ver = -1;

    if (!sec->section_buf) {
        av_free(filter);
        return ((void*)0);
    }
    return filter;
}
