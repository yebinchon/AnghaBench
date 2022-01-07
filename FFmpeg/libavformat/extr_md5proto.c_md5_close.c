
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct MD5Context {int md5; } ;
typedef int md5 ;
struct TYPE_7__ {char* filename; int protocol_blacklist; int protocol_whitelist; int interrupt_callback; struct MD5Context* priv_data; } ;
typedef TYPE_1__ URLContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_WRITE ;
 int av_freep (int *) ;
 int av_md5_final (int ,int*) ;
 int av_strstart (char const*,char*,char const**) ;
 int errno ;
 int ffurl_close (TYPE_1__*) ;
 int ffurl_open_whitelist (TYPE_1__**,char const*,int ,int *,int *,int ,int ,TYPE_1__*) ;
 int ffurl_write (TYPE_1__*,int*,int) ;
 int fwrite (int*,int,int,int ) ;
 int snprintf (int*,int,char*,int) ;
 int stdout ;

__attribute__((used)) static int md5_close(URLContext *h)
{
    struct MD5Context *c = h->priv_data;
    const char *filename = h->filename;
    uint8_t md5[16], buf[64];
    URLContext *out;
    int i, err = 0;

    av_md5_final(c->md5, md5);
    for (i = 0; i < sizeof(md5); i++)
        snprintf(buf + i*2, 3, "%02x", md5[i]);
    buf[i*2] = '\n';

    av_strstart(filename, "md5:", &filename);

    if (*filename) {
        err = ffurl_open_whitelist(&out, filename, AVIO_FLAG_WRITE,
                                   &h->interrupt_callback, ((void*)0),
                                   h->protocol_whitelist, h->protocol_blacklist, h);
        if (err)
            return err;
        err = ffurl_write(out, buf, i*2+1);
        ffurl_close(out);
    } else {
        if (fwrite(buf, 1, i*2+1, stdout) < i*2+1)
            err = AVERROR(errno);
    }

    av_freep(&c->md5);

    return err;
}
