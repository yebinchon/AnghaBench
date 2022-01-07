
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ handle; } ;
struct peer_dsc {TYPE_1__ dsc; } ;
struct peer_chr {int dscs; } ;


 struct peer_dsc* SLIST_FIRST (int *) ;
 struct peer_dsc* SLIST_NEXT (struct peer_dsc*,int ) ;
 int next ;
 struct peer_dsc* peer_dsc_find_prev (struct peer_chr const*,scalar_t__) ;

__attribute__((used)) static struct peer_dsc *
peer_dsc_find(const struct peer_chr *chr, uint16_t dsc_handle,
              struct peer_dsc **out_prev)
{
    struct peer_dsc *prev;
    struct peer_dsc *dsc;

    prev = peer_dsc_find_prev(chr, dsc_handle);
    if (prev == ((void*)0)) {
        dsc = SLIST_FIRST(&chr->dscs);
    } else {
        dsc = SLIST_NEXT(prev, next);
    }

    if (dsc != ((void*)0) && dsc->dsc.handle != dsc_handle) {
        dsc = ((void*)0);
    }

    if (out_prev != ((void*)0)) {
        *out_prev = prev;
    }
    return dsc;
}
