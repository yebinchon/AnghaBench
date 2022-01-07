
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* sys; } ;
struct TYPE_4__ {int ltc_divisor; } ;
typedef TYPE_2__ DVDemuxContext ;


 int AV_RB32 (int const*) ;
 int av_timecode_make_smpte_tc_string (char*,int ,int) ;
 int * dv_extract_pack (int const*,int ) ;
 int dv_timecode ;

__attribute__((used)) static int dv_extract_timecode(DVDemuxContext* c, const uint8_t* frame, char *tc)
{
    const uint8_t *tc_pack;




    int prevent_df = c->sys->ltc_divisor == 25 || c->sys->ltc_divisor == 50;

    tc_pack = dv_extract_pack(frame, dv_timecode);
    if (!tc_pack)
        return 0;
    av_timecode_make_smpte_tc_string(tc, AV_RB32(tc_pack + 1), prevent_df);
    return 1;
}
