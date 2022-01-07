
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cqueue ;
struct TYPE_3__ {double* weights; } ;
typedef TYPE_1__ DynamicAudioNormalizerContext ;


 double cqueue_peek (int *,int) ;
 int cqueue_size (int *) ;

__attribute__((used)) static double gaussian_filter(DynamicAudioNormalizerContext *s, cqueue *q)
{
    double result = 0.0;
    int i;

    for (i = 0; i < cqueue_size(q); i++) {
        result += cqueue_peek(q, i) * s->weights[i];
    }

    return result;
}
