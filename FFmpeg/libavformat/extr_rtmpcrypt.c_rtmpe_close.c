
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int stream; int dh; } ;
typedef TYPE_2__ RTMPEContext ;


 int ff_dh_free (int ) ;
 int ffurl_close (int ) ;

__attribute__((used)) static int rtmpe_close(URLContext *h)
{
    RTMPEContext *rt = h->priv_data;

    ff_dh_free(rt->dh);
    ffurl_close(rt->stream);

    return 0;
}
