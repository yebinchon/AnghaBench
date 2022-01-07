
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t bs_num_env; int* e_a; int bs_frame_class; int bs_num_noise; int bs_amp_res; int * t_q; int * t_env; int * bs_freq_res; int t_env_num_env_old; } ;
typedef TYPE_1__ SBRData ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void copy_sbr_grid(SBRData *dst, const SBRData *src) {

    dst->bs_freq_res[0] = dst->bs_freq_res[dst->bs_num_env];
    dst->t_env_num_env_old = dst->t_env[dst->bs_num_env];
    dst->e_a[0] = -(dst->e_a[1] != dst->bs_num_env);


    memcpy(dst->bs_freq_res+1, src->bs_freq_res+1, sizeof(dst->bs_freq_res)-sizeof(*dst->bs_freq_res));
    memcpy(dst->t_env, src->t_env, sizeof(dst->t_env));
    memcpy(dst->t_q, src->t_q, sizeof(dst->t_q));
    dst->bs_num_env = src->bs_num_env;
    dst->bs_amp_res = src->bs_amp_res;
    dst->bs_num_noise = src->bs_num_noise;
    dst->bs_frame_class = src->bs_frame_class;
    dst->e_a[1] = src->e_a[1];
}
