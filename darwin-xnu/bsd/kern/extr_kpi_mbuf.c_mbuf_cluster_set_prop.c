
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int m_flags; } ;


 int EBUSY ;
 int EINVAL ;
 int M_EXT ;
 scalar_t__ m_ext_set_prop (TYPE_1__*,int ,int ) ;

errno_t
mbuf_cluster_set_prop(mbuf_t mbuf, u_int32_t oldprop, u_int32_t newprop)
{
 if (mbuf == ((void*)0) || !(mbuf->m_flags & M_EXT))
  return (EINVAL);

 return (m_ext_set_prop(mbuf, oldprop, newprop) ? 0 : EBUSY);
}
