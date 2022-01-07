
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet_stat_increment_param {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int errno_t ;


 int FALSE ;
 int ifnet_input_common (struct ifnet*,struct mbuf*,int *,struct ifnet_stat_increment_param const*,int ,int ) ;

errno_t
ifnet_input(struct ifnet *ifp, struct mbuf *m_head,
    const struct ifnet_stat_increment_param *s)
{
 return (ifnet_input_common(ifp, m_head, ((void*)0), s, FALSE, FALSE));
}
