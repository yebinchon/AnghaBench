
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AC3EncodeContext ;


 int compute_exp_strategy (int *) ;
 int emms_c () ;
 int encode_exponents (int *) ;
 int extract_exponents (int *) ;

void ff_ac3_process_exponents(AC3EncodeContext *s)
{
    extract_exponents(s);

    compute_exp_strategy(s);

    encode_exponents(s);

    emms_c();
}
