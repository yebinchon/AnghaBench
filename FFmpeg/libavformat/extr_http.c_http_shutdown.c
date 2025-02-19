
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int footer ;
typedef int buf ;
struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int end_chunked_post; TYPE_4__* hd; scalar_t__ listen; scalar_t__ chunked_post; } ;
typedef TYPE_2__ HTTPContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_NONBLOCK ;
 int AVIO_FLAG_READ ;
 int AVIO_FLAG_WRITE ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int av_err2str (int) ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 int ffurl_read (TYPE_4__*,char*,int) ;
 int ffurl_write (TYPE_4__*,char*,int) ;

__attribute__((used)) static int http_shutdown(URLContext *h, int flags)
{
    int ret = 0;
    char footer[] = "0\r\n\r\n";
    HTTPContext *s = h->priv_data;


    if (((flags & AVIO_FLAG_WRITE) && s->chunked_post) ||
        ((flags & AVIO_FLAG_READ) && s->chunked_post && s->listen)) {
        ret = ffurl_write(s->hd, footer, sizeof(footer) - 1);
        ret = ret > 0 ? 0 : ret;

        if (!(flags & AVIO_FLAG_READ)) {
            char buf[1024];
            int read_ret;
            s->hd->flags |= AVIO_FLAG_NONBLOCK;
            read_ret = ffurl_read(s->hd, buf, sizeof(buf));
            s->hd->flags &= ~AVIO_FLAG_NONBLOCK;
            if (read_ret < 0 && read_ret != AVERROR(EAGAIN)) {
                av_log(h, AV_LOG_ERROR, "URL read error: %s\n", av_err2str(read_ret));
                ret = read_ret;
            }
        }
        s->end_chunked_post = 1;
    }

    return ret;
}
