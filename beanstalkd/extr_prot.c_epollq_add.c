
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char rw; struct TYPE_5__* next; } ;
typedef TYPE_1__ Conn ;


 int connsched (TYPE_1__*) ;
 TYPE_1__* epollq ;

__attribute__((used)) static void
epollq_add(Conn *c, char rw) {
    c->rw = rw;
    connsched(c);
    c->next = epollq;
    epollq = c;
}
