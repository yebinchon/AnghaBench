
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ MatchingInfo ;


 int av_freep (void**) ;

__attribute__((used)) static void sll_free(MatchingInfo *sll)
{
    void *tmp;
    while (sll) {
        tmp = sll;
        sll = sll->next;
        av_freep(&tmp);
    }
}
