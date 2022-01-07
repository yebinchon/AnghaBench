
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_7__ {int sun_path; int sun_family; } ;
struct TYPE_8__ {int timeout; int fd; TYPE_1__ addr; scalar_t__ listen; int type; } ;
typedef TYPE_2__ UnixContext ;
struct TYPE_9__ {int rw_timeout; TYPE_2__* priv_data; } ;
typedef TYPE_3__ URLContext ;


 int AF_UNIX ;
 scalar_t__ AVUNERROR (int) ;
 scalar_t__ EADDRINUSE ;
 int av_strlcpy (int ,char const*,int) ;
 int av_strstart (char const*,char*,char const**) ;
 int closesocket (int) ;
 int ff_listen_bind (int,struct sockaddr*,int,int,TYPE_3__*) ;
 int ff_listen_connect (int,struct sockaddr*,int,int,TYPE_3__*,int ) ;
 int ff_neterrno () ;
 int ff_socket (int ,int ,int ) ;
 int unlink (int ) ;

__attribute__((used)) static int unix_open(URLContext *h, const char *filename, int flags)
{
    UnixContext *s = h->priv_data;
    int fd, ret;

    av_strstart(filename, "unix:", &filename);
    s->addr.sun_family = AF_UNIX;
    av_strlcpy(s->addr.sun_path, filename, sizeof(s->addr.sun_path));

    if ((fd = ff_socket(AF_UNIX, s->type, 0)) < 0)
        return ff_neterrno();

    if (s->timeout < 0 && h->rw_timeout)
        s->timeout = h->rw_timeout / 1000;

    if (s->listen) {
        ret = ff_listen_bind(fd, (struct sockaddr *)&s->addr,
                             sizeof(s->addr), s->timeout, h);
        if (ret < 0)
            goto fail;
        fd = ret;
    } else {
        ret = ff_listen_connect(fd, (struct sockaddr *)&s->addr,
                                sizeof(s->addr), s->timeout, h, 0);
        if (ret < 0)
            goto fail;
    }

    s->fd = fd;

    return 0;

fail:
    if (s->listen && AVUNERROR(ret) != EADDRINUSE)
        unlink(s->addr.sun_path);
    if (fd >= 0)
        closesocket(fd);
    return ret;
}
