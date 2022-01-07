
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int fd; } ;
typedef TYPE_2__ SCTPContext ;


 int closesocket (int ) ;

__attribute__((used)) static int sctp_close(URLContext *h)
{
    SCTPContext *s = h->priv_data;
    closesocket(s->fd);
    return 0;
}
