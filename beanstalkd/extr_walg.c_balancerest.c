
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* tail; } ;
typedef TYPE_1__ Wal ;
struct TYPE_9__ {int resv; int free; struct TYPE_9__* next; } ;
typedef int Jobrec ;
typedef TYPE_2__ File ;


 int moveresv (TYPE_2__*,TYPE_2__*,int) ;
 int needfree (TYPE_1__*,int) ;
 int twarnx (char*) ;

__attribute__((used)) static int
balancerest(Wal *w, File *b, int n)
{
    int rest, c, r;
    static const int z = sizeof(int) + sizeof(Jobrec);

    if (!b) return 1;

    rest = b->resv - n;
    r = rest % z;
    if (r == 0) return balancerest(w, b->next, 0);

    c = z - r;
    if (w->tail->resv >= c && b->free >= c) {
        moveresv(b, w->tail, c);
        return balancerest(w, b->next, 0);
    }

    if (needfree(w, r) != r) {
        twarnx("needfree");
        return 0;
    }
    moveresv(w->tail, b, r);
    return balancerest(w, b->next, 0);
}
