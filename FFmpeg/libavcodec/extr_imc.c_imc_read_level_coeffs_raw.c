
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gb; void* coef0_pos; } ;
typedef TYPE_1__ IMCContext ;


 int BANDS ;
 void* get_bits (int *,int) ;

__attribute__((used)) static void imc_read_level_coeffs_raw(IMCContext *q, int stream_format_code,
                                      int *levlCoeffs)
{
    int i;

    q->coef0_pos = get_bits(&q->gb, 5);
    levlCoeffs[0] = get_bits(&q->gb, 7);
    for (i = 1; i < BANDS; i++)
        levlCoeffs[i] = get_bits(&q->gb, 4);
}
