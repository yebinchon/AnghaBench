
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ f; } ;
typedef TYPE_1__ Test ;


 int start (TYPE_1__*) ;
 int waittest (TYPE_1__*) ;

__attribute__((used)) static void
runalltest(Test *ts, int limit)
{
    int nrun = 0;
    Test *t;
    for (t=ts; t->f; t++) {
        if (nrun >= limit) {
            waittest(ts);
            nrun--;
        }
        start(t);
        nrun++;
    }
    for (; nrun; nrun--) {
        waittest(ts);
    }
}
