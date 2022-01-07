
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ type; int fd; } ;
typedef TYPE_1__ UnixContext ;
struct TYPE_5__ {int flags; TYPE_1__* priv_data; } ;
typedef TYPE_2__ URLContext ;


 int AVERROR_EOF ;
 int AVIO_FLAG_NONBLOCK ;
 scalar_t__ SOCK_STREAM ;
 int ff_neterrno () ;
 int ff_network_wait_fd (int ,int ) ;
 int recv (int ,int *,int,int ) ;

__attribute__((used)) static int unix_read(URLContext *h, uint8_t *buf, int size)
{
    UnixContext *s = h->priv_data;
    int ret;

    if (!(h->flags & AVIO_FLAG_NONBLOCK)) {
        ret = ff_network_wait_fd(s->fd, 0);
        if (ret < 0)
            return ret;
    }
    ret = recv(s->fd, buf, size, 0);
    if (!ret && s->type == SOCK_STREAM)
        return AVERROR_EOF;
    return ret < 0 ? ff_neterrno() : ret;
}
