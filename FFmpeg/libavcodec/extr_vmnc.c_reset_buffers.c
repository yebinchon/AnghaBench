
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cur_hy; scalar_t__ cur_hx; scalar_t__ cur_h; scalar_t__ cur_w; int screendta; int curmask; int curbits; } ;
typedef TYPE_1__ VmncContext ;


 int av_freep (int *) ;

__attribute__((used)) static void reset_buffers(VmncContext *c)
{
    av_freep(&c->curbits);
    av_freep(&c->curmask);
    av_freep(&c->screendta);
    c->cur_w = c->cur_h = 0;
    c->cur_hx = c->cur_hy = 0;

}
