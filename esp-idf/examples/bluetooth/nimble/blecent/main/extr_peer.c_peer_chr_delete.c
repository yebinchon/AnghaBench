
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer_dsc {int dscs; } ;
struct peer_chr {int dscs; } ;


 struct peer_dsc* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int next ;
 int os_memblock_put (int *,struct peer_dsc*) ;
 int peer_chr_pool ;
 int peer_dsc_pool ;

__attribute__((used)) static void
peer_chr_delete(struct peer_chr *chr)
{
    struct peer_dsc *dsc;

    while ((dsc = SLIST_FIRST(&chr->dscs)) != ((void*)0)) {
        SLIST_REMOVE_HEAD(&chr->dscs, next);
        os_memblock_put(&peer_dsc_pool, dsc);
    }

    os_memblock_put(&peer_chr_pool, chr);
}
