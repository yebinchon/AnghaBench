
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * src; int * nxt; int * prv; } ;
typedef TYPE_1__ FieldMatchContext ;
typedef int AVFrame ;


 int mB ;
 int mN ;
 int mP ;
 int mU ;

__attribute__((used)) static AVFrame *select_frame(FieldMatchContext *fm, int match)
{
    if (match == mP || match == mB) return fm->prv;
    else if (match == mN || match == mU) return fm->nxt;
    else return fm->src;
}
