
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int m_flags; } ;


 int EINVAL ;
 int M_EXT ;
 int m_ext_get_prop (TYPE_1__*) ;

errno_t
mbuf_cluster_get_prop(mbuf_t mbuf, u_int32_t *prop)
{
 if (mbuf == ((void*)0) || prop == ((void*)0) || !(mbuf->m_flags & M_EXT))
  return (EINVAL);

 *prop = m_ext_get_prop(mbuf);
 return (0);
}
