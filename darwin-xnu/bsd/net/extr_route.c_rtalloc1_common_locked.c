
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct sockaddr_storage {int ss_family; int ss_len; } ;
struct sockaddr {size_t sa_family; } ;
struct rtentry {int rt_flags; int rt_gateway; TYPE_1__* rt_ifp; } ;
struct rt_addrinfo {struct sockaddr** rti_info; } ;
struct radix_node_head {int dummy; } ;
typedef int info ;
typedef int def_key ;
typedef struct sockaddr_storage* caddr_t ;
struct TYPE_7__ {int sa_family; int sa_len; } ;
struct TYPE_6__ {int rts_unreach; } ;
struct TYPE_5__ {int if_index; } ;


 int FALSE ;
 size_t RTAX_DST ;
 int RTF_CLONING ;
 int RTF_HOST ;
 int RTF_LLINFO ;
 int RTF_PRCLONING ;
 int RTF_ROUTER ;
 int RTF_XRESOLVE ;
 int RTM_MISS ;
 int RTM_RESOLVE ;
 int RT_LOCK_SPIN (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int bzero (struct sockaddr_storage*,int) ;
 scalar_t__ equal (TYPE_3__*,int ) ;
 TYPE_3__* rt_key (struct rtentry*) ;
 struct rtentry* rt_lookup (int ,struct sockaddr*,int *,struct radix_node_head*,unsigned int) ;
 int rt_missmsg (int,struct rt_addrinfo*,int ,int) ;
 struct radix_node_head** rt_tables ;
 struct rtentry* rtalloc1_scoped_locked (struct sockaddr*,int ,int ,int ) ;
 int rtfree_locked (struct rtentry*) ;
 int rtrequest_locked (int,struct sockaddr*,int *,int *,int ,struct rtentry**) ;
 TYPE_2__ rtstat ;

struct rtentry *
rtalloc1_common_locked(struct sockaddr *dst, int report, uint32_t ignflags,
    unsigned int ifscope)
{
 struct radix_node_head *rnh = rt_tables[dst->sa_family];
 struct rtentry *rt, *newrt = ((void*)0);
 struct rt_addrinfo info;
 uint32_t nflags;
 int err = 0, msgtype = RTM_MISS;

 if (rnh == ((void*)0))
  goto unreachable;





 rt = rt_lookup(FALSE, dst, ((void*)0), rnh, ifscope);
 if (rt == ((void*)0))
  goto unreachable;

 RT_LOCK_SPIN(rt);
 newrt = rt;
 nflags = rt->rt_flags & ~ignflags;
 RT_UNLOCK(rt);
 if (report && (nflags & (RTF_CLONING | RTF_PRCLONING))) {





  err = rtrequest_locked(RTM_RESOLVE, dst, ((void*)0), ((void*)0), 0, &newrt);
  if (err) {






   newrt = rt;
   goto miss;
  }






  rtfree_locked(rt);
  if ((newrt->rt_flags & (RTF_HOST | RTF_LLINFO)) ==
      (RTF_HOST | RTF_LLINFO)) {
   struct rtentry *defrt = ((void*)0);
   struct sockaddr_storage def_key;

   bzero(&def_key, sizeof(def_key));
   def_key.ss_len = rt_key(newrt)->sa_len;
   def_key.ss_family = rt_key(newrt)->sa_family;

   defrt = rtalloc1_scoped_locked((struct sockaddr *)&def_key,
     0, 0, newrt->rt_ifp->if_index);

   if (defrt) {
    if (equal(rt_key(newrt), defrt->rt_gateway)) {
     newrt->rt_flags |= RTF_ROUTER;
    }
    rtfree_locked(defrt);
   }
  }

  if ((rt = newrt) && (rt->rt_flags & RTF_XRESOLVE)) {




   msgtype = RTM_RESOLVE;
   goto miss;
  }
 }
 goto done;

unreachable:




 rtstat.rts_unreach++;

miss:
 if (report) {





  bzero((caddr_t)&info, sizeof(info));
  info.rti_info[RTAX_DST] = dst;
  rt_missmsg(msgtype, &info, 0, err);
 }
done:
 return (newrt);
}
