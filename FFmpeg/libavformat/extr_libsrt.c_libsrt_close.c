
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int eid; int fd; } ;
typedef TYPE_2__ SRTContext ;


 int srt_cleanup () ;
 int srt_close (int ) ;
 int srt_epoll_release (int ) ;

__attribute__((used)) static int libsrt_close(URLContext *h)
{
    SRTContext *s = h->priv_data;

    srt_close(s->fd);

    srt_epoll_release(s->eid);

    srt_cleanup();

    return 0;
}
