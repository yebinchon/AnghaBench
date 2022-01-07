
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet_stat_increment_param {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int errno_t ;


 int FALSE ;
 int TRUE ;
 int ifnet_input_common (struct ifnet*,struct mbuf*,struct mbuf*,struct ifnet_stat_increment_param const*,int ,int ) ;

errno_t
ifnet_input_extended(struct ifnet *ifp, struct mbuf *m_head,
    struct mbuf *m_tail, const struct ifnet_stat_increment_param *s)
{
 return (ifnet_input_common(ifp, m_head, m_tail, s, TRUE, FALSE));
}
