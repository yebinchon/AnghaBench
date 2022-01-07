
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* tail; } ;
typedef TYPE_2__ Wal ;
struct TYPE_5__ {int free; } ;


 scalar_t__ makenextfile (TYPE_2__*) ;

__attribute__((used)) static int
needfree(Wal *w, int n)
{
    if (w->tail->free >= n) return n;
    if (makenextfile(w)) return n;
    return 0;
}
