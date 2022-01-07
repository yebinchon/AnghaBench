
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vis; scalar_t__ val; } ;
typedef TYPE_1__ Jpeg2000TgtNode ;


 int tag_tree_size (int,int) ;

__attribute__((used)) static void tag_tree_zero(Jpeg2000TgtNode *t, int w, int h)
{
    int i, siz = tag_tree_size(w, h);

    for (i = 0; i < siz; i++) {
        t[i].val = 0;
        t[i].vis = 0;
    }
}
