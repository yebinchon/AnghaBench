
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int is_connected; TYPE_1__* prot; int priv_data; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_13__ {TYPE_2__* url_context; } ;
struct TYPE_11__ {int (* url_open_dir ) (TYPE_2__*) ;scalar_t__ priv_data_class; scalar_t__ url_close_dir; scalar_t__ url_read_dir; } ;
typedef TYPE_3__ AVIODirContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVIO_FLAG_READ ;
 int ENOMEM ;
 int ENOSYS ;
 int av_assert0 (TYPE_3__**) ;
 int av_free (TYPE_3__*) ;
 TYPE_3__* av_mallocz (int) ;
 int av_opt_set_dict (int ,int **) ;
 int ffurl_alloc (TYPE_2__**,char const*,int ,int *) ;
 int ffurl_close (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

int avio_open_dir(AVIODirContext **s, const char *url, AVDictionary **options)
{
    URLContext *h = ((void*)0);
    AVIODirContext *ctx = ((void*)0);
    int ret;
    av_assert0(s);

    ctx = av_mallocz(sizeof(*ctx));
    if (!ctx) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    if ((ret = ffurl_alloc(&h, url, AVIO_FLAG_READ, ((void*)0))) < 0)
        goto fail;

    if (h->prot->url_open_dir && h->prot->url_read_dir && h->prot->url_close_dir) {
        if (options && h->prot->priv_data_class &&
            (ret = av_opt_set_dict(h->priv_data, options)) < 0)
            goto fail;
        ret = h->prot->url_open_dir(h);
    } else
        ret = AVERROR(ENOSYS);
    if (ret < 0)
        goto fail;

    h->is_connected = 1;
    ctx->url_context = h;
    *s = ctx;
    return 0;

  fail:
    av_free(ctx);
    *s = ((void*)0);
    ffurl_close(h);
    return ret;
}
