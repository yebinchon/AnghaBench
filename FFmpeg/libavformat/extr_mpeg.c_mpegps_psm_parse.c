
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {unsigned char* psm_es_type; } ;
typedef TYPE_1__ MpegDemuxContext ;
typedef int AVIOContext ;


 unsigned char avio_r8 (int *) ;
 int avio_rb16 (int *) ;
 int avio_rb32 (int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static long mpegps_psm_parse(MpegDemuxContext *m, AVIOContext *pb)
{
    int psm_length, ps_info_length, es_map_length;

    psm_length = avio_rb16(pb);
    avio_r8(pb);
    avio_r8(pb);
    ps_info_length = avio_rb16(pb);


    avio_skip(pb, ps_info_length);
                        avio_rb16(pb);

    es_map_length = psm_length - ps_info_length - 10;


    while (es_map_length >= 4) {
        unsigned char type = avio_r8(pb);
        unsigned char es_id = avio_r8(pb);
        uint16_t es_info_length = avio_rb16(pb);


        m->psm_es_type[es_id] = type;

        avio_skip(pb, es_info_length);
        es_map_length -= 4 + es_info_length;
    }
    avio_rb32(pb);
    return 2 + psm_length;
}
