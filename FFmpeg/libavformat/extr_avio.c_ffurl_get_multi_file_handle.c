
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* prot; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_6__ {int (* url_get_multi_file_handle ) (TYPE_2__*,int**,int*) ;int (* url_get_file_handle ) (TYPE_2__*) ;} ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int ENOSYS ;
 int* av_malloc (int) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,int**,int*) ;

int ffurl_get_multi_file_handle(URLContext *h, int **handles, int *numhandles)
{
    if (!h || !h->prot)
        return AVERROR(ENOSYS);
    if (!h->prot->url_get_multi_file_handle) {
        if (!h->prot->url_get_file_handle)
            return AVERROR(ENOSYS);
        *handles = av_malloc(sizeof(**handles));
        if (!*handles)
            return AVERROR(ENOMEM);
        *numhandles = 1;
        *handles[0] = h->prot->url_get_file_handle(h);
        return 0;
    }
    return h->prot->url_get_multi_file_handle(h, handles, numhandles);
}
