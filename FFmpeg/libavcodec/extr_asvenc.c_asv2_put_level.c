
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avctx; } ;
typedef int PutBitContext ;
typedef TYPE_1__ ASV1Context ;


 int AV_LOG_WARNING ;
 int asv2_put_bits (int *,int,int) ;
 int av_clip_int8 (int) ;
 int av_log (int ,int ,char*,int) ;
 int ** ff_asv2_level_tab ;
 int put_bits (int *,int ,int ) ;

__attribute__((used)) static inline void asv2_put_level(ASV1Context *a, PutBitContext *pb, int level)
{
    unsigned int index = level + 31;

    if (index <= 62) {
        put_bits(pb, ff_asv2_level_tab[index][1], ff_asv2_level_tab[index][0]);
    } else {
        put_bits(pb, ff_asv2_level_tab[31][1], ff_asv2_level_tab[31][0]);
        if (level < -128 || level > 127) {
            av_log(a->avctx, AV_LOG_WARNING, "Clipping level %d, increase qscale\n", level);
            level = av_clip_int8(level);
        }
        asv2_put_bits(pb, 8, level & 0xFF);
    }
}
