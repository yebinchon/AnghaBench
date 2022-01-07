
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ Conn ;


 TYPE_1__* epollq ;

__attribute__((used)) static void
epollq_rmconn(Conn *c)
{
    Conn *x, *newhead = ((void*)0);

    while (epollq) {

        x = epollq;
        epollq = epollq->next;
        x->next = ((void*)0);


        if (x != c) {
            x->next = newhead;
            newhead = x;
        }
    }
    epollq = newhead;
}
