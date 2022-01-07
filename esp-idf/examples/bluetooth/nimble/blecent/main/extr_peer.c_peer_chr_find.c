
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct peer_svc {int chrs; } ;
struct TYPE_2__ {scalar_t__ val_handle; } ;
struct peer_chr {TYPE_1__ chr; } ;


 struct peer_chr* SLIST_FIRST (int *) ;
 struct peer_chr* SLIST_NEXT (struct peer_chr*,int ) ;
 int next ;
 struct peer_chr* peer_chr_find_prev (struct peer_svc const*,scalar_t__) ;

__attribute__((used)) static struct peer_chr *
peer_chr_find(const struct peer_svc *svc, uint16_t chr_val_handle,
              struct peer_chr **out_prev)
{
    struct peer_chr *prev;
    struct peer_chr *chr;

    prev = peer_chr_find_prev(svc, chr_val_handle);
    if (prev == ((void*)0)) {
        chr = SLIST_FIRST(&svc->chrs);
    } else {
        chr = SLIST_NEXT(prev, next);
    }

    if (chr != ((void*)0) && chr->chr.val_handle != chr_val_handle) {
        chr = ((void*)0);
    }

    if (out_prev != ((void*)0)) {
        *out_prev = prev;
    }
    return chr;
}
