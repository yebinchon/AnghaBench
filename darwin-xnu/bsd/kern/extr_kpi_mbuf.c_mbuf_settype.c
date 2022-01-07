
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mbuf_type_t ;
typedef int mbuf_t ;
typedef int errno_t ;


 int EINVAL ;
 scalar_t__ MBUF_TYPE_FREE ;
 int m_mchtype (int ,scalar_t__) ;

errno_t
mbuf_settype(mbuf_t mbuf, mbuf_type_t new_type)
{
 if (new_type == MBUF_TYPE_FREE)
  return (EINVAL);

 m_mchtype(mbuf, new_type);

 return (0);
}
