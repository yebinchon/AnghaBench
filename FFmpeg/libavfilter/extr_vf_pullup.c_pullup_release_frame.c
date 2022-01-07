
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int parity; int lock; scalar_t__ buffer; scalar_t__* ofields; scalar_t__* ifields; } ;
typedef TYPE_1__ PullupFrame ;


 int pullup_release_buffer (scalar_t__,int) ;

__attribute__((used)) static void pullup_release_frame(PullupFrame *f)
{
    int i;

    for (i = 0; i < f->length; i++)
        pullup_release_buffer(f->ifields[i], f->parity ^ (i & 1));

    pullup_release_buffer(f->ofields[0], 0);
    pullup_release_buffer(f->ofields[1], 1);

    if (f->buffer)
        pullup_release_buffer(f->buffer, 2);
    f->lock--;
}
