
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {int dummy; } ;
struct dadq {int dad_attached; scalar_t__ dad_lladdrlen; scalar_t__ dad_loopbackprobe; scalar_t__ dad_ns_lcount; scalar_t__ dad_ns_tcount; scalar_t__ dad_ns_ocount; scalar_t__ dad_na_icount; scalar_t__ dad_ns_icount; int dad_count; struct ifaddr* dad_ifa; } ;


 int DAD_ADDREF_LOCKED (struct dadq*) ;
 int DAD_LOCK (struct dadq*) ;
 int DAD_UNLOCK (struct dadq*) ;
 int IFA_ADDREF (struct ifaddr*) ;
 int TAILQ_INSERT_TAIL (int *,struct dadq*,int ) ;
 int VERIFY (int) ;
 int dad6_mutex ;
 int dad_list ;
 int dadq ;
 int ip6_dad_count ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

__attribute__((used)) static struct dadq *
nd6_dad_attach(struct dadq *dp, struct ifaddr *ifa)
{
 lck_mtx_lock(dad6_mutex);
 DAD_LOCK(dp);
 dp->dad_ifa = ifa;
 IFA_ADDREF(ifa);
 dp->dad_count = ip6_dad_count;
 dp->dad_ns_icount = dp->dad_na_icount = 0;
 dp->dad_ns_ocount = dp->dad_ns_tcount = 0;
 dp->dad_ns_lcount = dp->dad_loopbackprobe = 0;
 VERIFY(!dp->dad_attached);
 dp->dad_attached = 1;
 dp->dad_lladdrlen = 0;
 DAD_ADDREF_LOCKED(dp);
 DAD_ADDREF_LOCKED(dp);
 TAILQ_INSERT_TAIL(&dadq, (struct dadq *)dp, dad_list);
 DAD_UNLOCK(dp);
 lck_mtx_unlock(dad6_mutex);

 return (dp);
}
