
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int*** dequant8_coeff; int*** dequant4_coeff; scalar_t__ transform_8x8_mode; } ;
struct TYPE_9__ {scalar_t__ transform_bypass; } ;
typedef TYPE_1__ SPS ;
typedef TYPE_2__ PPS ;


 int init_dequant4_coeff_table (TYPE_2__*,TYPE_1__ const*) ;
 int init_dequant8_coeff_table (TYPE_2__*,TYPE_1__ const*) ;
 int memset (int***,int ,int) ;

__attribute__((used)) static void init_dequant_tables(PPS *pps, const SPS *sps)
{
    int i, x;
    init_dequant4_coeff_table(pps, sps);
    memset(pps->dequant8_coeff, 0, sizeof(pps->dequant8_coeff));

    if (pps->transform_8x8_mode)
        init_dequant8_coeff_table(pps, sps);
    if (sps->transform_bypass) {
        for (i = 0; i < 6; i++)
            for (x = 0; x < 16; x++)
                pps->dequant4_coeff[i][0][x] = 1 << 6;
        if (pps->transform_8x8_mode)
            for (i = 0; i < 6; i++)
                for (x = 0; x < 64; x++)
                    pps->dequant8_coeff[i][0][x] = 1 << 6;
    }
}
