
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifclassq {int dummy; } ;
typedef int mbuf_svc_class_t ;
typedef int errno_t ;
typedef int classq_pkt_type_t ;


 int TRUE ;
 int ifclassq_dequeue_common (struct ifclassq*,int ,int ,int ,void**,void**,int *,int *,int ,int *) ;

errno_t
ifclassq_dequeue_sc(struct ifclassq *ifq, mbuf_svc_class_t sc,
    u_int32_t pkt_limit, u_int32_t byte_limit, void **head, void **tail,
    u_int32_t *cnt, u_int32_t *len, classq_pkt_type_t *ptype)
{
 return (ifclassq_dequeue_common(ifq, sc, pkt_limit, byte_limit,
     head, tail, cnt, len, TRUE, ptype));
}
