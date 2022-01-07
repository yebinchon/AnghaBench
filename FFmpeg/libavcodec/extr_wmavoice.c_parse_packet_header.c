
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spillover_bitsize; void* spillover_nbits; int has_residual_lsps; int gb; } ;
typedef TYPE_1__ WMAVoiceContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 void* get_bits (int *,int) ;
 int get_bits1 (int *) ;
 scalar_t__ get_bits_left (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int parse_packet_header(WMAVoiceContext *s)
{
    GetBitContext *gb = &s->gb;
    unsigned int res, n_superframes = 0;

    skip_bits(gb, 4);
    s->has_residual_lsps = get_bits1(gb);
    do {
        res = get_bits(gb, 6);

        n_superframes += res;
    } while (res == 0x3F);
    s->spillover_nbits = get_bits(gb, s->spillover_bitsize);

    return get_bits_left(gb) >= 0 ? n_superframes : AVERROR_INVALIDDATA;
}
