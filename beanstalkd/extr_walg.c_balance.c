
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* cur; int tail; } ;
typedef TYPE_1__ Wal ;
struct TYPE_9__ {int resv; } ;


 int balancerest (TYPE_1__*,TYPE_4__*,int) ;
 int moveresv (int ,TYPE_4__*,int) ;
 int needfree (TYPE_1__*,int) ;
 int twarnx (char*) ;
 int usenext (TYPE_1__*) ;

__attribute__((used)) static int
balance(Wal *w, int n)
{


    while (w->cur->resv < n) {
        int m = w->cur->resv;

        int r = needfree(w, m);
        if (r != m) {
            twarnx("needfree");
            return 0;
        }

        moveresv(w->tail, w->cur, m);
        usenext(w);
    }


    return balancerest(w, w->cur, n);
}
