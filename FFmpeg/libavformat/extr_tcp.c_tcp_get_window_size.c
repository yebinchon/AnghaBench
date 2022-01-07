
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int socklen_t ;
typedef int avail ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {scalar_t__ recv_buffer_size; int fd; } ;
typedef TYPE_2__ TCPContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int ff_neterrno () ;
 scalar_t__ getsockopt (int ,int ,int ,int*,int*) ;

__attribute__((used)) static int tcp_get_window_size(URLContext *h)
{
    TCPContext *s = h->priv_data;
    int avail;
    socklen_t avail_len = sizeof(avail);
    if (getsockopt(s->fd, SOL_SOCKET, SO_RCVBUF, &avail, &avail_len)) {
        return ff_neterrno();
    }
    return avail;
}
