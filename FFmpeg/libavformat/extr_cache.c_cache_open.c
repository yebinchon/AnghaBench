
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int protocol_blacklist; int protocol_whitelist; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {scalar_t__ fd; char* filename; int inner; } ;
typedef TYPE_2__ Context ;
typedef int AVDictionary ;


 int AV_LOG_ERROR ;
 int av_freep (char**) ;
 int av_log (TYPE_1__*,int ,char*) ;
 int av_strstart (char const*,char*,char const**) ;
 scalar_t__ avpriv_tempfile (char*,char**,int ,TYPE_1__*) ;
 int ffurl_open_whitelist (int *,char const*,int,int *,int **,int ,int ,TYPE_1__*) ;
 int unlink (char*) ;

__attribute__((used)) static int cache_open(URLContext *h, const char *arg, int flags, AVDictionary **options)
{
    int ret;
    char *buffername;
    Context *c= h->priv_data;

    av_strstart(arg, "cache:", &arg);

    c->fd = avpriv_tempfile("ffcache", &buffername, 0, h);
    if (c->fd < 0){
        av_log(h, AV_LOG_ERROR, "Failed to create tempfile\n");
        return c->fd;
    }

    ret = unlink(buffername);

    if (ret >= 0)
        av_freep(&buffername);
    else
        c->filename = buffername;

    return ffurl_open_whitelist(&c->inner, arg, flags, &h->interrupt_callback,
                                options, h->protocol_whitelist, h->protocol_blacklist, h);
}
