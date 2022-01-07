
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {float re; scalar_t__ im; } ;
struct TYPE_9__ {int tx; int (* tx_fn ) (int ,TYPE_2__*,TYPE_2__*,int) ;} ;
typedef TYPE_1__ DenoiseState ;
typedef TYPE_2__ AVComplexFloat ;


 int FREQ_SIZE ;
 int RNN_COPY (TYPE_2__*,TYPE_2__*,int ) ;
 int WINDOW_SIZE ;
 int stub1 (int ,TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static void forward_transform(DenoiseState *st, AVComplexFloat *out, const float *in)
{
    AVComplexFloat x[WINDOW_SIZE];
    AVComplexFloat y[WINDOW_SIZE];

    for (int i = 0; i < WINDOW_SIZE; i++) {
        x[i].re = in[i];
        x[i].im = 0;
    }

    st->tx_fn(st->tx, y, x, sizeof(float));

    RNN_COPY(out, y, FREQ_SIZE);
}
