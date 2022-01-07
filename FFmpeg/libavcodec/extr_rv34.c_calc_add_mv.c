
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mv_weight2; int mv_weight1; } ;
typedef int SUINT ;
typedef TYPE_1__ RV34DecContext ;



__attribute__((used)) static int calc_add_mv(RV34DecContext *r, int dir, int val)
{
    int mul = dir ? -r->mv_weight2 : r->mv_weight1;

    return (int)(val * (SUINT)mul + 0x2000) >> 14;
}
