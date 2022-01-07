
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int flags; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {scalar_t__ out_size; scalar_t__ nb_bytes_read; scalar_t__ finishing; int stream; } ;
typedef TYPE_2__ RTMP_HTTPContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVIO_FLAG_NONBLOCK ;
 int EAGAIN ;
 int av_usleep (int) ;
 int ffurl_read (int ,int *,int) ;
 int rtmp_http_send_cmd (TYPE_1__*,char*) ;
 int rtmp_http_write (TYPE_1__*,char*,int) ;

__attribute__((used)) static int rtmp_http_read(URLContext *h, uint8_t *buf, int size)
{
    RTMP_HTTPContext *rt = h->priv_data;
    int ret, off = 0;


    do {
        ret = ffurl_read(rt->stream, buf + off, size);
        if (ret < 0 && ret != AVERROR_EOF)
            return ret;

        if (!ret || ret == AVERROR_EOF) {
            if (rt->finishing) {


                return AVERROR(EAGAIN);
            }




            if (rt->out_size > 0) {
                if ((ret = rtmp_http_send_cmd(h, "send")) < 0)
                    return ret;
            } else {
                if (rt->nb_bytes_read == 0) {


                    av_usleep(50000);
                }

                if ((ret = rtmp_http_write(h, "", 1)) < 0)
                    return ret;

                if ((ret = rtmp_http_send_cmd(h, "idle")) < 0)
                    return ret;
            }

            if (h->flags & AVIO_FLAG_NONBLOCK) {

                return AVERROR(EAGAIN);
            }
        } else {
            off += ret;
            size -= ret;
            rt->nb_bytes_read += ret;
        }
    } while (off <= 0);

    return off;
}
