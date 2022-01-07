
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nstat_tucookie {int pname; struct inpcb* inp; } ;
struct inpcb {int inp_nstat_refcnt; TYPE_1__* inp_socket; } ;
struct TYPE_2__ {int last_pid; } ;


 scalar_t__ IPPROTO_UDP ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int OSFree (struct nstat_tucookie*,int,int ) ;
 int OSIncrementAtomic (int *) ;
 struct nstat_tucookie* OSMalloc (int,int ) ;
 scalar_t__ SOCK_PROTO (TYPE_1__*) ;
 int WNT_ACQUIRE ;
 scalar_t__ WNT_STOPUSING ;
 int bzero (struct nstat_tucookie*,int) ;
 scalar_t__ in_pcb_checkstate (struct inpcb*,int ,int) ;
 int nstat_malloc_tag ;
 int nstat_mtx ;
 int proc_name (int ,int ,int) ;

__attribute__((used)) static struct nstat_tucookie *
nstat_tucookie_alloc_internal(
    struct inpcb *inp,
    bool ref,
    bool locked)
{
 struct nstat_tucookie *cookie;

 cookie = OSMalloc(sizeof(*cookie), nstat_malloc_tag);
 if (cookie == ((void*)0))
  return ((void*)0);
 if (!locked)
  LCK_MTX_ASSERT(&nstat_mtx, LCK_MTX_ASSERT_NOTOWNED);
 if (ref && in_pcb_checkstate(inp, WNT_ACQUIRE, locked) == WNT_STOPUSING)
 {
  OSFree(cookie, sizeof(*cookie), nstat_malloc_tag);
  return ((void*)0);
 }
 bzero(cookie, sizeof(*cookie));
 cookie->inp = inp;
 proc_name(inp->inp_socket->last_pid, cookie->pname,
     sizeof(cookie->pname));




 if (SOCK_PROTO(inp->inp_socket) == IPPROTO_UDP)
  OSIncrementAtomic(&inp->inp_nstat_refcnt);

 return cookie;
}
