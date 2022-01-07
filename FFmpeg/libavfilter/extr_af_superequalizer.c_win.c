
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float iza; int aa; } ;
typedef TYPE_1__ SuperEqualizerContext ;


 int alpha (int ) ;
 float izero (TYPE_1__*,int) ;
 int sqrtf (int) ;

__attribute__((used)) static float win(SuperEqualizerContext *s, float n, int N)
{
    return izero(s, alpha(s->aa) * sqrtf(1 - 4 * n * n / ((N - 1) * (N - 1)))) / s->iza;
}
