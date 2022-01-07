
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nstat_tucookie {TYPE_1__* inp; } ;
struct TYPE_2__ {int inp_nstat_refcnt; int inp_socket; } ;


 scalar_t__ IPPROTO_UDP ;
 int OSDecrementAtomic (int *) ;
 int OSFree (struct nstat_tucookie*,int,int ) ;
 scalar_t__ SOCK_PROTO (int ) ;
 int WNT_RELEASE ;
 int in_pcb_checkstate (TYPE_1__*,int ,int) ;
 int nstat_malloc_tag ;

__attribute__((used)) static void
nstat_tucookie_release_internal(
    struct nstat_tucookie *cookie,
    int inplock)
{
 if (SOCK_PROTO(cookie->inp->inp_socket) == IPPROTO_UDP)
  OSDecrementAtomic(&cookie->inp->inp_nstat_refcnt);
 in_pcb_checkstate(cookie->inp, WNT_RELEASE, inplock);
 OSFree(cookie, sizeof(*cookie), nstat_malloc_tag);
}
