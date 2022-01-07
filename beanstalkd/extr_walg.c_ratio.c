
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int alive; int resv; scalar_t__ filesize; scalar_t__ nfile; } ;
typedef TYPE_1__ Wal ;



__attribute__((used)) static int
ratio(Wal *w)
{
    int64 n, d;

    d = w->alive + w->resv;
    n = (int64)w->nfile * (int64)w->filesize - d;
    if (!d) return 0;
    return n / d;
}
