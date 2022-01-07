
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {struct TYPE_14__* priv_data; TYPE_1__* prot; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_15__ {int value; } ;
struct TYPE_13__ {scalar_t__ priv_data_class; } ;
typedef int AVIOInterruptCB ;
typedef TYPE_3__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int av_assert0 (int) ;
 TYPE_3__* av_dict_get (int *,char*,int *,int ) ;
 int av_dict_set (int **,char*,char const*,int ) ;
 int av_opt_copy (TYPE_2__*,TYPE_2__*) ;
 int av_opt_set_dict (TYPE_2__*,int **) ;
 int ffurl_alloc (TYPE_2__**,char const*,int,int const*) ;
 int ffurl_close (TYPE_2__*) ;
 int ffurl_connect (TYPE_2__*,int **) ;
 int strcmp (char const*,int ) ;

int ffurl_open_whitelist(URLContext **puc, const char *filename, int flags,
                         const AVIOInterruptCB *int_cb, AVDictionary **options,
                         const char *whitelist, const char* blacklist,
                         URLContext *parent)
{
    AVDictionary *tmp_opts = ((void*)0);
    AVDictionaryEntry *e;
    int ret = ffurl_alloc(puc, filename, flags, int_cb);
    if (ret < 0)
        return ret;
    if (parent)
        av_opt_copy(*puc, parent);
    if (options &&
        (ret = av_opt_set_dict(*puc, options)) < 0)
        goto fail;
    if (options && (*puc)->prot->priv_data_class &&
        (ret = av_opt_set_dict((*puc)->priv_data, options)) < 0)
        goto fail;

    if (!options)
        options = &tmp_opts;

    av_assert0(!whitelist ||
               !(e=av_dict_get(*options, "protocol_whitelist", ((void*)0), 0)) ||
               !strcmp(whitelist, e->value));
    av_assert0(!blacklist ||
               !(e=av_dict_get(*options, "protocol_blacklist", ((void*)0), 0)) ||
               !strcmp(blacklist, e->value));

    if ((ret = av_dict_set(options, "protocol_whitelist", whitelist, 0)) < 0)
        goto fail;

    if ((ret = av_dict_set(options, "protocol_blacklist", blacklist, 0)) < 0)
        goto fail;

    if ((ret = av_opt_set_dict(*puc, options)) < 0)
        goto fail;

    ret = ffurl_connect(*puc, options);

    if (!ret)
        return 0;
fail:
    ffurl_close(*puc);
    *puc = ((void*)0);
    return ret;
}
