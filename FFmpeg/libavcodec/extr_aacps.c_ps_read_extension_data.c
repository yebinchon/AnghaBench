
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_env; int opd_par; int ipd_par; void* enable_ipdopd; } ;
typedef TYPE_1__ PSContext ;
typedef int GetBitContext ;


 void* get_bits1 (int *) ;
 int get_bits_count (int *) ;
 int huff_ipd_df ;
 int huff_ipd_dt ;
 int huff_opd_df ;
 int huff_opd_dt ;
 int read_ipdopd_data (int *,int *,TYPE_1__*,int ,int ,int,int) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static int ps_read_extension_data(GetBitContext *gb, PSContext *ps, int ps_extension_id)
{
    int e;
    int count = get_bits_count(gb);

    if (ps_extension_id)
        return 0;

    ps->enable_ipdopd = get_bits1(gb);
    if (ps->enable_ipdopd) {
        for (e = 0; e < ps->num_env; e++) {
            int dt = get_bits1(gb);
            read_ipdopd_data(((void*)0), gb, ps, ps->ipd_par, dt ? huff_ipd_dt : huff_ipd_df, e, dt);
            dt = get_bits1(gb);
            read_ipdopd_data(((void*)0), gb, ps, ps->opd_par, dt ? huff_opd_dt : huff_opd_df, e, dt);
        }
    }
    skip_bits1(gb);
    return get_bits_count(gb) - count;
}
