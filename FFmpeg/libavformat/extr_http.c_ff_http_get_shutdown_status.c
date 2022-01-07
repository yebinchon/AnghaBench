
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int hd; } ;
typedef TYPE_2__ HTTPContext ;


 int ffurl_read (int ,char*,int) ;

int ff_http_get_shutdown_status(URLContext *h)
{
    int ret = 0;
    HTTPContext *s = h->priv_data;


    char buf[1024];
    int read_ret;
    read_ret = ffurl_read(s->hd, buf, sizeof(buf));
    if (read_ret < 0) {
        ret = read_ret;
    }

    return ret;
}
