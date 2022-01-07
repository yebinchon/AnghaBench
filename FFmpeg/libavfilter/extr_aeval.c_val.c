
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* channel_values; scalar_t__ nb_in_channels; } ;
typedef TYPE_1__ EvalContext ;


 size_t FFMIN (int,scalar_t__) ;

__attribute__((used)) static double val(void *priv, double ch)
{
    EvalContext *eval = priv;
    return eval->channel_values[FFMIN((int)ch, eval->nb_in_channels-1)];
}
