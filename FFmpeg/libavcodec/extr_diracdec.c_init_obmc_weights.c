
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blheight; int * obmc_weight; } ;
typedef int Plane ;
typedef TYPE_1__ DiracContext ;


 int MAX_BLOCKSIZE ;
 int init_obmc_weight (int *,int ,int ,int,int,int,int) ;

__attribute__((used)) static void init_obmc_weights(DiracContext *s, Plane *p, int by)
{
    int top = !by;
    int bottom = by == s->blheight-1;


    if (top || bottom || by == 1) {
        init_obmc_weight(p, s->obmc_weight[0], MAX_BLOCKSIZE, 1, 0, top, bottom);
        init_obmc_weight(p, s->obmc_weight[1], MAX_BLOCKSIZE, 0, 0, top, bottom);
        init_obmc_weight(p, s->obmc_weight[2], MAX_BLOCKSIZE, 0, 1, top, bottom);
    }
}
