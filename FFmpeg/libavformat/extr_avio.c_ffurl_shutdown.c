
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* prot; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_5__ {int (* url_shutdown ) (TYPE_2__*,int) ;} ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int stub1 (TYPE_2__*,int) ;

int ffurl_shutdown(URLContext *h, int flags)
{
    if (!h || !h->prot || !h->prot->url_shutdown)
        return AVERROR(ENOSYS);
    return h->prot->url_shutdown(h, flags);
}
