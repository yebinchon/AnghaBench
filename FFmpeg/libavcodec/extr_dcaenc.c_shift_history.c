
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int channels; int* channel_order_tab; int ** history; } ;
typedef TYPE_1__ DCAEncContext ;



__attribute__((used)) static void shift_history(DCAEncContext *c, const int32_t *input)
{
    int k, ch;

    for (k = 0; k < 512; k++)
        for (ch = 0; ch < c->channels; ch++) {
            const int chi = c->channel_order_tab[ch];

            c->history[ch][k] = input[k * c->channels + chi];
        }
}
