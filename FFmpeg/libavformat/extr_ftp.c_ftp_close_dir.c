
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int conn_data; int conn_control; int dir_buffer; } ;
typedef TYPE_2__ FTPContext ;


 int av_freep (int *) ;
 int ffurl_closep (int *) ;

__attribute__((used)) static int ftp_close_dir(URLContext *h)
{
    FTPContext *s = h->priv_data;
    av_freep(&s->dir_buffer);
    ffurl_closep(&s->conn_control);
    ffurl_closep(&s->conn_data);
    return 0;
}
