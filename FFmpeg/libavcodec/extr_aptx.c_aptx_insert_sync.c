
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {TYPE_1__* quantize; } ;
struct TYPE_5__ {scalar_t__ error; int quantized_sample_parity_change; int quantized_sample; } ;
typedef TYPE_1__ Quantize ;
typedef TYPE_2__ Channel ;


 int NB_CHANNELS ;
 int NB_SUBBANDS ;
 scalar_t__ aptx_check_parity (TYPE_2__*,int *) ;

__attribute__((used)) static void aptx_insert_sync(Channel channels[NB_CHANNELS], int32_t *idx)
{
    if (aptx_check_parity(channels, idx)) {
        int i;
        Channel *c;
        static const int map[] = { 1, 2, 0, 3 };
        Quantize *min = &channels[NB_CHANNELS-1].quantize[map[0]];
        for (c = &channels[NB_CHANNELS-1]; c >= channels; c--)
            for (i = 0; i < NB_SUBBANDS; i++)
                if (c->quantize[map[i]].error < min->error)
                    min = &c->quantize[map[i]];



        min->quantized_sample = min->quantized_sample_parity_change;
    }
}
