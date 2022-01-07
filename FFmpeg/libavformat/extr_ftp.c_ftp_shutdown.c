
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {scalar_t__ conn_data; } ;
typedef TYPE_2__ FTPContext ;


 int AVERROR (int ) ;
 int EIO ;
 int ff_dlog (TYPE_1__*,char*) ;
 int ffurl_shutdown (scalar_t__,int) ;

__attribute__((used)) static int ftp_shutdown(URLContext *h, int flags)
{
    FTPContext *s = h->priv_data;

    ff_dlog(h, "ftp protocol shutdown\n");

    if (s->conn_data)
        return ffurl_shutdown(s->conn_data, flags);

    return AVERROR(EIO);
}
