
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifclassq {int dummy; } ;
typedef int classq_pkt_type_t ;


 int CLASSQ_DEQUEUE_MAX_BYTE_LIMIT ;
 int fq_if_dequeue_classq_multi (struct ifclassq*,int,int ,void**,int *,int *,int *,int *) ;

__attribute__((used)) static void *
fq_if_dequeue_classq(struct ifclassq *ifq, classq_pkt_type_t *ptype)
{
 void *top;

 (void) fq_if_dequeue_classq_multi(ifq, 1,
     CLASSQ_DEQUEUE_MAX_BYTE_LIMIT, &top, ((void*)0), ((void*)0), ((void*)0), ptype);
 return (top);
}
