
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ sock; } ;
typedef TYPE_2__ Server ;


 int h_accept (int ,int,TYPE_2__*) ;

void
srvaccept(Server *s, int ev)
{
    h_accept(s->sock.fd, ev, s);
}
