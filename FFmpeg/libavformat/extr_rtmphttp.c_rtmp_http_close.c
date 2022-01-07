
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int tmp_buf ;
struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {int finishing; int stream; int out_data; scalar_t__ out_size; scalar_t__ initialized; } ;
typedef TYPE_2__ RTMP_HTTPContext ;


 int av_freep (int *) ;
 int ffurl_close (int ) ;
 int rtmp_http_read (TYPE_1__*,int *,int) ;
 int rtmp_http_send_cmd (TYPE_1__*,char*) ;
 int rtmp_http_write (TYPE_1__*,char*,int) ;

__attribute__((used)) static int rtmp_http_close(URLContext *h)
{
    RTMP_HTTPContext *rt = h->priv_data;
    uint8_t tmp_buf[2048];
    int ret = 0;

    if (rt->initialized) {

        rt->finishing = 1;

        do {
            ret = rtmp_http_read(h, tmp_buf, sizeof(tmp_buf));
        } while (ret > 0);


        rt->out_size = 0;

        if ((ret = rtmp_http_write(h, "", 1)) == 1)
            ret = rtmp_http_send_cmd(h, "close");
    }

    av_freep(&rt->out_data);
    ffurl_close(rt->stream);

    return ret;
}
