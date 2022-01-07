
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rw; int sock; struct TYPE_4__* next; } ;
typedef TYPE_1__ Conn ;


 int connclose (TYPE_1__*) ;
 TYPE_1__* epollq ;
 int sockwant (int *,int ) ;
 int twarn (char*) ;

__attribute__((used)) static void
epollq_apply()
{
    Conn *c;

    while (epollq) {
        c = epollq;
        epollq = epollq->next;
        c->next = ((void*)0);
        int r = sockwant(&c->sock, c->rw);
        if (r == -1) {
            twarn("sockwant");
            connclose(c);
        }
    }
}
