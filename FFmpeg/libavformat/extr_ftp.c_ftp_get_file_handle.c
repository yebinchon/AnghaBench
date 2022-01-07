
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
 int ffurl_get_file_handle (scalar_t__) ;

__attribute__((used)) static int ftp_get_file_handle(URLContext *h)
{
    FTPContext *s = h->priv_data;

    ff_dlog(h, "ftp protocol get_file_handle\n");

    if (s->conn_data)
        return ffurl_get_file_handle(s->conn_data);

    return AVERROR(EIO);
}
