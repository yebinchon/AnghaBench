
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bs_num_noise; int bs_df_noise; int bs_num_env; int bs_df_env; } ;
typedef int SpectralBandReplication ;
typedef TYPE_1__ SBRData ;
typedef int GetBitContext ;


 int get_bits1_vector (int *,int ,int ) ;

__attribute__((used)) static void read_sbr_dtdf(SpectralBandReplication *sbr, GetBitContext *gb,
                          SBRData *ch_data)
{
    get_bits1_vector(gb, ch_data->bs_df_env, ch_data->bs_num_env);
    get_bits1_vector(gb, ch_data->bs_df_noise, ch_data->bs_num_noise);
}
