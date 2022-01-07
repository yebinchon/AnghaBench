
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sun_path; } ;
struct TYPE_6__ {int fd; TYPE_1__ addr; scalar_t__ listen; } ;
typedef TYPE_2__ UnixContext ;
struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef TYPE_3__ URLContext ;


 int closesocket (int ) ;
 int unlink (int ) ;

__attribute__((used)) static int unix_close(URLContext *h)
{
    UnixContext *s = h->priv_data;
    if (s->listen)
        unlink(s->addr.sun_path);
    closesocket(s->fd);
    return 0;
}
