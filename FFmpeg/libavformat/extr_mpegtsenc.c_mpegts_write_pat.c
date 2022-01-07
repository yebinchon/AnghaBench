
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
struct TYPE_6__ {int pid; } ;
struct TYPE_8__ {int sid; TYPE_1__ pmt; } ;
struct TYPE_7__ {int nb_services; int tables_version; int tsid; int pat; TYPE_3__** services; } ;
typedef TYPE_2__ MpegTSWrite ;
typedef TYPE_3__ MpegTSService ;
typedef TYPE_4__ AVFormatContext ;


 int PAT_TID ;
 int SECTION_LENGTH ;
 int mpegts_write_section1 (int *,int ,int ,int ,int ,int ,int *,int) ;
 int put16 (int **,int) ;

__attribute__((used)) static void mpegts_write_pat(AVFormatContext *s)
{
    MpegTSWrite *ts = s->priv_data;
    MpegTSService *service;
    uint8_t data[SECTION_LENGTH], *q;
    int i;

    q = data;
    for (i = 0; i < ts->nb_services; i++) {
        service = ts->services[i];
        put16(&q, service->sid);
        put16(&q, 0xe000 | service->pmt.pid);
    }
    mpegts_write_section1(&ts->pat, PAT_TID, ts->tsid, ts->tables_version, 0, 0,
                          data, q - data);
}
