
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ptrdiff_t ;
struct TYPE_3__ {scalar_t__ rend; scalar_t__ shend; scalar_t__ rpos; scalar_t__ buf; scalar_t__ shcnt; scalar_t__ shlim; } ;
typedef TYPE_1__ FFFILE ;



__attribute__((used)) static void ffshlim(FFFILE *f, ptrdiff_t lim)
{
    f->shlim = lim;
    f->shcnt = f->buf - f->rpos;

    if (lim && f->rend - f->rpos > lim)
        f->shend = f->rpos + lim;
    else
        f->shend = f->rend;
}
