
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inpcb {TYPE_1__* inp_socket; } ;
struct TYPE_3__ {int so_error; } ;


 int sorwakeup (TYPE_1__*) ;
 int sowwakeup (TYPE_1__*) ;

void
udp_notify(struct inpcb *inp, int errno)
{
 inp->inp_socket->so_error = errno;
 sorwakeup(inp->inp_socket);
 sowwakeup(inp->inp_socket);
}
