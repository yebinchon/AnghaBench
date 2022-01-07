
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int resv; TYPE_2__* tail; TYPE_1__* cur; int use; } ;
typedef TYPE_3__ Wal ;
struct TYPE_8__ {int free; int resv; } ;
struct TYPE_7__ {int free; int resv; } ;


 int balance (TYPE_3__*,int) ;
 int needfree (TYPE_3__*,int) ;
 int twarnx (char*) ;

__attribute__((used)) static int
reserve(Wal *w, int n)
{
    int r;


    if (!w->use) return 1;

    if (w->cur->free >= n) {
        w->cur->free -= n;
        w->cur->resv += n;
        w->resv += n;
        return n;
    }

    r = needfree(w, n);
    if (r != n) {
        twarnx("needfree");
        return 0;
    }

    w->tail->free -= n;
    w->tail->resv += n;
    w->resv += n;
    if (!balance(w, n)) {

        w->resv -= n;
        w->tail->resv -= n;
        w->tail->free += n;
        return 0;
    }

    return n;
}
