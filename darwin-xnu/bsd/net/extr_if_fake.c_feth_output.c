
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
typedef int * ifnet_t ;
typedef int iff_flags_t ;
typedef TYPE_1__* if_fake_ref ;
struct TYPE_3__ {int iff_flags; int * iff_peer; } ;


 struct mbuf* copy_mbuf (struct mbuf*) ;
 int feth_lock () ;
 int feth_output_common (int *,struct mbuf*,int *,int ) ;
 int feth_unlock () ;
 TYPE_1__* ifnet_get_if_fake (int *) ;
 int ifnet_stat_increment_out (int *,int ,int ,int) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
feth_output(ifnet_t ifp, struct mbuf * m)
{
 struct mbuf * copy_m;
 if_fake_ref fakeif;
 iff_flags_t flags;
 ifnet_t peer = ((void*)0);

 if (m == ((void*)0)) {
  return (0);
 }
 copy_m = copy_mbuf(m);
 m_freem(m);
 m = ((void*)0);
 if (copy_m == ((void*)0)) {

  ifnet_stat_increment_out(ifp, 0, 0, 1);
  return (0);
 }
 feth_lock();
 fakeif = ifnet_get_if_fake(ifp);
 if (fakeif != ((void*)0)) {
  peer = fakeif->iff_peer;
  flags = fakeif->iff_flags;
 }
 feth_unlock();
 if (peer == ((void*)0)) {
  m_freem(copy_m);
  ifnet_stat_increment_out(ifp, 0, 0, 1);
  return (0);
 }
 feth_output_common(ifp, copy_m, peer, flags);
 return (0);
}
