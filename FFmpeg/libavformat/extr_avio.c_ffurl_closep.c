
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* priv_data; TYPE_1__* prot; scalar_t__ is_connected; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_7__ {int (* url_close ) (TYPE_2__*) ;int flags; scalar_t__ priv_data_class; scalar_t__ priv_data_size; } ;


 int URL_PROTOCOL_FLAG_NETWORK ;
 int av_freep (TYPE_2__**) ;
 int av_opt_free (TYPE_2__*) ;
 int ff_network_close () ;
 int stub1 (TYPE_2__*) ;

int ffurl_closep(URLContext **hh)
{
    URLContext *h= *hh;
    int ret = 0;
    if (!h)
        return 0;

    if (h->is_connected && h->prot->url_close)
        ret = h->prot->url_close(h);




    if (h->prot->priv_data_size) {
        if (h->prot->priv_data_class)
            av_opt_free(h->priv_data);
        av_freep(&h->priv_data);
    }
    av_opt_free(h);
    av_freep(hh);
    return ret;
}
