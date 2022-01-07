
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ start_handle; } ;
struct peer_svc {TYPE_1__ svc; } ;
struct peer {int svcs; } ;


 struct peer_svc* SLIST_FIRST (int *) ;
 struct peer_svc* SLIST_NEXT (struct peer_svc*,int ) ;
 int next ;
 struct peer_svc* peer_svc_find_prev (struct peer*,scalar_t__) ;

__attribute__((used)) static struct peer_svc *
peer_svc_find(struct peer *peer, uint16_t svc_start_handle,
              struct peer_svc **out_prev)
{
    struct peer_svc *prev;
    struct peer_svc *svc;

    prev = peer_svc_find_prev(peer, svc_start_handle);
    if (prev == ((void*)0)) {
        svc = SLIST_FIRST(&peer->svcs);
    } else {
        svc = SLIST_NEXT(prev, next);
    }

    if (svc != ((void*)0) && svc->svc.start_handle != svc_start_handle) {
        svc = ((void*)0);
    }

    if (out_prev != ((void*)0)) {
        *out_prev = prev;
    }
    return svc;
}
