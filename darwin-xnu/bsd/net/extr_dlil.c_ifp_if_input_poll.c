
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;



__attribute__((used)) static void
ifp_if_input_poll(struct ifnet *ifp, u_int32_t flags, u_int32_t max_cnt,
    struct mbuf **m_head, struct mbuf **m_tail, u_int32_t *cnt, u_int32_t *len)
{
#pragma unused(ifp, flags, max_cnt)
 if (m_head != ((void*)0))
  *m_head = ((void*)0);
 if (m_tail != ((void*)0))
  *m_tail = ((void*)0);
 if (cnt != ((void*)0))
  *cnt = 0;
 if (len != ((void*)0))
  *len = 0;
}
