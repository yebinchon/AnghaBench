
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* qtable; } ;
typedef TYPE_1__ TgqContext ;


 int const* ff_inv_aanscales ;

__attribute__((used)) static void tgq_calculate_qtable(TgqContext *s, int quant)
{
    int i, j;
    const int a = (14 * (100 - quant)) / 100 + 1;
    const int b = (11 * (100 - quant)) / 100 + 4;
    for (j = 0; j < 8; j++)
        for (i = 0; i < 8; i++)
            s->qtable[j * 8 + i] = ((a * (j + i) / (7 + 7) + b) *
                                    ff_inv_aanscales[j * 8 + i]) >> (14 - 4);
}
