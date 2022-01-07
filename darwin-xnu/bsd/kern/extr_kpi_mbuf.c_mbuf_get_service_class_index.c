
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int mbuf_svc_class_t ;
typedef int errno_t ;


 int EINVAL ;
 int MBUF_SCIDX (int ) ;
 int MBUF_VALID_SC (int ) ;

errno_t
mbuf_get_service_class_index(mbuf_svc_class_t sc, u_int32_t *index)
{
 if (index == ((void*)0) || !MBUF_VALID_SC(sc))
  return (EINVAL);

 *index = MBUF_SCIDX(sc);
 return (0);
}
