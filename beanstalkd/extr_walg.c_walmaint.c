
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ use; } ;
typedef TYPE_1__ Wal ;


 int walcompact (TYPE_1__*) ;
 int walsync (TYPE_1__*) ;

void
walmaint(Wal *w)
{
    if (w->use) {
        walcompact(w);
        walsync(w);
    }
}
