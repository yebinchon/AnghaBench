
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ sock; } ;
typedef TYPE_2__ Conn ;


 int h_conn (int ,int,TYPE_2__*) ;

__attribute__((used)) static void
prothandle(Conn *c, int ev)
{
    h_conn(c->sock.fd, ev, c);
}
