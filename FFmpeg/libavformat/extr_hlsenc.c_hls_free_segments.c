
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ HLSSegment ;


 int av_freep (TYPE_1__**) ;

__attribute__((used)) static void hls_free_segments(HLSSegment *p)
{
    HLSSegment *en;

    while (p) {
        en = p;
        p = p->next;
        av_freep(&en);
    }
}
