
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {scalar_t__* name; scalar_t__* provider_name; int sid; } ;
struct TYPE_5__ {int nb_services; int tables_version; int tsid; int sdt; int service_type; TYPE_2__** services; int onid; } ;
typedef TYPE_1__ MpegTSWrite ;
typedef TYPE_2__ MpegTSService ;
typedef TYPE_3__ AVFormatContext ;


 int SDT_TID ;
 int SECTION_LENGTH ;
 int mpegts_write_section1 (int *,int ,int ,int ,int ,int ,int*,int) ;
 int put16 (int**,int ) ;
 int putbuf (int**,scalar_t__*,scalar_t__) ;

__attribute__((used)) static void mpegts_write_sdt(AVFormatContext *s)
{
    MpegTSWrite *ts = s->priv_data;
    MpegTSService *service;
    uint8_t data[SECTION_LENGTH], *q, *desc_list_len_ptr, *desc_len_ptr;
    int i, running_status, free_ca_mode, val;

    q = data;
    put16(&q, ts->onid);
    *q++ = 0xff;
    for (i = 0; i < ts->nb_services; i++) {
        service = ts->services[i];
        put16(&q, service->sid);
        *q++ = 0xfc | 0x00;
        desc_list_len_ptr = q;
        q += 2;
        running_status = 4;
        free_ca_mode = 0;


        *q++ = 0x48;
        desc_len_ptr = q;
        q++;
        *q++ = ts->service_type;
        putbuf(&q, service->provider_name, service->provider_name[0] + 1);
        putbuf(&q, service->name, service->name[0] + 1);
        desc_len_ptr[0] = q - desc_len_ptr - 1;


        val = (running_status << 13) | (free_ca_mode << 12) |
              (q - desc_list_len_ptr - 2);
        desc_list_len_ptr[0] = val >> 8;
        desc_list_len_ptr[1] = val;
    }
    mpegts_write_section1(&ts->sdt, SDT_TID, ts->tsid, ts->tables_version, 0, 0,
                          data, q - data);
}
