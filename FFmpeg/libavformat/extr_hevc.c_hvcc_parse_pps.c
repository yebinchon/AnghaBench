
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int parallelismType; } ;
typedef TYPE_1__ HEVCDecoderConfigurationRecord ;
typedef int GetBitContext ;


 scalar_t__ get_bits1 (int *) ;
 int get_se_golomb_long (int *) ;
 int get_ue_golomb_long (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int hvcc_parse_pps(GetBitContext *gb,
                          HEVCDecoderConfigurationRecord *hvcc)
{
    uint8_t tiles_enabled_flag, entropy_coding_sync_enabled_flag;

    get_ue_golomb_long(gb);
    get_ue_golomb_long(gb);
    skip_bits(gb, 7);

    get_ue_golomb_long(gb);
    get_ue_golomb_long(gb);
    get_se_golomb_long(gb);





    skip_bits(gb, 2);

    if (get_bits1(gb))
        get_ue_golomb_long(gb);

    get_se_golomb_long(gb);
    get_se_golomb_long(gb);







    skip_bits(gb, 4);

    tiles_enabled_flag = get_bits1(gb);
    entropy_coding_sync_enabled_flag = get_bits1(gb);

    if (entropy_coding_sync_enabled_flag && tiles_enabled_flag)
        hvcc->parallelismType = 0;
    else if (entropy_coding_sync_enabled_flag)
        hvcc->parallelismType = 3;
    else if (tiles_enabled_flag)
        hvcc->parallelismType = 2;
    else
        hvcc->parallelismType = 1;


    return 0;
}
