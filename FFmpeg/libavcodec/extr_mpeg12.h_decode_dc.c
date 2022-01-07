
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int table; } ;
struct TYPE_3__ {int table; } ;
typedef int GetBitContext ;


 int AV_LOG_ERROR ;
 int DC_VLC_BITS ;
 int av_log (int *,int ,char*) ;
 TYPE_2__ ff_dc_chroma_vlc ;
 TYPE_1__ ff_dc_lum_vlc ;
 int get_vlc2 (int *,int ,int ,int) ;
 int get_xbits (int *,int) ;

__attribute__((used)) static inline int decode_dc(GetBitContext *gb, int component)
{
    int code, diff;

    if (component == 0) {
        code = get_vlc2(gb, ff_dc_lum_vlc.table, DC_VLC_BITS, 2);
    } else {
        code = get_vlc2(gb, ff_dc_chroma_vlc.table, DC_VLC_BITS, 2);
    }
    if (code < 0){
        av_log(((void*)0), AV_LOG_ERROR, "invalid dc code at\n");
        return 0xffff;
    }
    if (code == 0) {
        diff = 0;
    } else {
        diff = get_xbits(gb, code);
    }
    return diff;
}
