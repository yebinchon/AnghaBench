
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__** child; int elem; int state; } ;
typedef TYPE_1__ AVTreeNode ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,...) ;

__attribute__((used)) static void print(AVTreeNode *t, int depth)
{
    int i;
    for (i = 0; i < depth * 4; i++)
        av_log(((void*)0), AV_LOG_ERROR, " ");
    if (t) {
        av_log(((void*)0), AV_LOG_ERROR, "Node %p %2d %p\n", t, t->state, t->elem);
        print(t->child[0], depth + 1);
        print(t->child[1], depth + 1);
    } else
        av_log(((void*)0), AV_LOG_ERROR, "NULL\n");
}
