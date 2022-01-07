
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int lbr_rand; float* sb_scf; } ;
typedef TYPE_1__ DCALbrDecoder ;



__attribute__((used)) static float lbr_rand(DCALbrDecoder *s, int sb)
{
    s->lbr_rand = 1103515245U * s->lbr_rand + 12345U;
    return s->lbr_rand * s->sb_scf[sb];
}
