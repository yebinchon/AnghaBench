
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cvector; int * prevfilt; } ;
typedef TYPE_1__ TSContext ;



__attribute__((used)) static void truespeech_save_prevvec(TSContext *c)
{
    int i;

    for(i = 0; i < 8; i++)
        c->prevfilt[i] = c->cvector[i];
}
