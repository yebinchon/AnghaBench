
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct sockaddr_dl {scalar_t__ sdl_alen; } ;
struct TYPE_3__ {scalar_t__ rmx_expire; } ;
struct rtentry {scalar_t__ rt_expire; int rt_flags; scalar_t__ rt_refcnt; int rt_gateway; TYPE_1__ rt_rmx; } ;
struct llinfo_arp {int la_flags; scalar_t__ la_probeexp; scalar_t__ la_asked; int la_holdq; scalar_t__ la_prbreq_cnt; struct rtentry* la_rt; } ;
struct arptf_arg {int killed; scalar_t__ probing; int draining; int aging; int sticky; int qsize; int qlen; int found; } ;
struct TYPE_4__ {int timeouts; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LLINFO_PROBING ;
 int ROUTE_LLENTRY_UNREACH ;
 int RTF_REJECT ;
 int RTF_STATIC ;
 int RTM_DELETE ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 struct sockaddr_dl* SDL (int ) ;
 int TRUE ;
 int VERIFY (int) ;
 int arp_llinfo_flushq (struct llinfo_arp*) ;
 TYPE_2__ arpstat ;
 scalar_t__ net_uptime () ;
 scalar_t__ qlen (int *) ;
 scalar_t__ qsize (int *) ;
 int rnh_lock ;
 int route_event_enqueue_nwk_wq_entry (struct rtentry*,int *,int ,int *,int ) ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 int rtrequest_locked (int ,int ,int *,int ,int ,int *) ;

__attribute__((used)) static void
arptfree(struct llinfo_arp *la, void *arg)
{
 struct arptf_arg *ap = arg;
 struct rtentry *rt = la->la_rt;
 uint64_t timenow;

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_OWNED);


 RT_LOCK(rt);

 VERIFY(rt->rt_expire == 0 || rt->rt_rmx.rmx_expire != 0);
 VERIFY(rt->rt_expire != 0 || rt->rt_rmx.rmx_expire == 0);

 ap->found++;
 timenow = net_uptime();


 if (ap->probing && (la->la_flags & LLINFO_PROBING) &&
     la->la_probeexp <= timenow) {
  struct sockaddr_dl *sdl = SDL(rt->rt_gateway);
  if (sdl != ((void*)0))
   sdl->sdl_alen = 0;
  (void) arp_llinfo_flushq(la);



  route_event_enqueue_nwk_wq_entry(rt, ((void*)0),
      ROUTE_LLENTRY_UNREACH, ((void*)0), TRUE);
 }
 ap->qlen += qlen(&la->la_holdq);
 ap->qlen += la->la_prbreq_cnt;
 ap->qsize += qsize(&la->la_holdq);

 if (rt->rt_expire == 0 || (rt->rt_flags & RTF_STATIC)) {
  ap->sticky++;

  if (rt->rt_expire == 0) {
   RT_UNLOCK(rt);
   return;
  }
 }


 if (!ap->draining && rt->rt_expire > timenow) {
  RT_UNLOCK(rt);
  ap->aging++;
  return;
 }

 if (rt->rt_refcnt > 0) {





  if (!ap->draining && !ap->probing) {
   struct sockaddr_dl *sdl = SDL(rt->rt_gateway);
   if (sdl != ((void*)0))
    sdl->sdl_alen = 0;
   la->la_asked = 0;
   rt->rt_flags &= ~RTF_REJECT;
  }
  RT_UNLOCK(rt);
 } else if (!(rt->rt_flags & RTF_STATIC) && !ap->probing) {







  RT_UNLOCK(rt);
  rtrequest_locked(RTM_DELETE, rt_key(rt), ((void*)0),
      rt_mask(rt), 0, ((void*)0));
  arpstat.timeouts++;
  ap->killed++;
 } else {

  RT_UNLOCK(rt);
 }
}
