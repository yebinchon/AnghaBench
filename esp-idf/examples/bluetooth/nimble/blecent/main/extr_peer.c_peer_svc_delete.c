
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer_svc {int chrs; } ;
struct peer_chr {int dummy; } ;


 struct peer_chr* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int next ;
 int os_memblock_put (int *,struct peer_svc*) ;
 int peer_chr_delete (struct peer_chr*) ;
 int peer_svc_pool ;

__attribute__((used)) static void
peer_svc_delete(struct peer_svc *svc)
{
    struct peer_chr *chr;

    while ((chr = SLIST_FIRST(&svc->chrs)) != ((void*)0)) {
        SLIST_REMOVE_HEAD(&svc->chrs, next);
        peer_chr_delete(chr);
    }

    os_memblock_put(&peer_svc_pool, svc);
}
