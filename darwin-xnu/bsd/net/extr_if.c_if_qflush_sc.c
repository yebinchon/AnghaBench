
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct ifclassq {int dummy; } ;
struct ifnet {struct ifclassq if_snd; } ;
typedef int mbuf_svc_class_t ;


 scalar_t__ IFCQ_IS_ENABLED (struct ifclassq*) ;
 int IFCQ_LOCK (struct ifclassq*) ;
 int IFCQ_PURGE_SC (struct ifclassq*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int IFCQ_UNLOCK (struct ifclassq*) ;
 int MBUF_SC_UNSPEC ;
 scalar_t__ MBUF_VALID_SC (int ) ;
 int VERIFY (int) ;

void
if_qflush_sc(struct ifnet *ifp, mbuf_svc_class_t sc, u_int32_t flow,
    u_int32_t *packets, u_int32_t *bytes, int ifq_locked)
{
 struct ifclassq *ifq = &ifp->if_snd;
 u_int32_t cnt = 0, len = 0;
 u_int32_t a_cnt = 0, a_len = 0;

 VERIFY(sc == MBUF_SC_UNSPEC || MBUF_VALID_SC(sc));
 VERIFY(flow != 0);

 if (!ifq_locked)
  IFCQ_LOCK(ifq);

 if (IFCQ_IS_ENABLED(ifq))
  IFCQ_PURGE_SC(ifq, sc, flow, cnt, len);

 if (!ifq_locked)
  IFCQ_UNLOCK(ifq);

 if (packets != ((void*)0))
  *packets = cnt + a_cnt;
 if (bytes != ((void*)0))
  *bytes = len + a_len;
}
