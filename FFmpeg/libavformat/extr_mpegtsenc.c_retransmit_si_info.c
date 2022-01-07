
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {scalar_t__ last_sdt_ts; scalar_t__ sdt_period; scalar_t__ last_pat_ts; scalar_t__ pat_period; int nb_services; int * services; } ;
typedef TYPE_1__ MpegTSWrite ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 void* FFMAX (scalar_t__,scalar_t__) ;
 int mpegts_write_pat (TYPE_2__*) ;
 int mpegts_write_pmt (TYPE_2__*,int ) ;
 int mpegts_write_sdt (TYPE_2__*) ;

__attribute__((used)) static void retransmit_si_info(AVFormatContext *s, int force_pat, int force_sdt, int64_t pcr)
{
    MpegTSWrite *ts = s->priv_data;
    int i;

    if ((pcr != AV_NOPTS_VALUE && ts->last_sdt_ts == AV_NOPTS_VALUE) ||
        (pcr != AV_NOPTS_VALUE && pcr - ts->last_sdt_ts >= ts->sdt_period) ||
        force_sdt
    ) {
        if (pcr != AV_NOPTS_VALUE)
            ts->last_sdt_ts = FFMAX(pcr, ts->last_sdt_ts);
        mpegts_write_sdt(s);
    }
    if ((pcr != AV_NOPTS_VALUE && ts->last_pat_ts == AV_NOPTS_VALUE) ||
        (pcr != AV_NOPTS_VALUE && pcr - ts->last_pat_ts >= ts->pat_period) ||
        force_pat) {
        if (pcr != AV_NOPTS_VALUE)
            ts->last_pat_ts = FFMAX(pcr, ts->last_pat_ts);
        mpegts_write_pat(s);
        for (i = 0; i < ts->nb_services; i++)
            mpegts_write_pmt(s, ts->services[i]);
    }
}
