
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; struct TYPE_3__** child; } ;
typedef TYPE_1__ AVTreeNode ;


 int FFMAX (int,int) ;

__attribute__((used)) static int check(AVTreeNode *t)
{
    if (t) {
        int left = check(t->child[0]);
        int right = check(t->child[1]);

        if (left > 999 || right > 999)
            return 1000;
        if (right - left != t->state)
            return 1000;
        if (t->state > 1 || t->state < -1)
            return 1000;
        return FFMAX(left, right) + 1;
    }
    return 0;
}
