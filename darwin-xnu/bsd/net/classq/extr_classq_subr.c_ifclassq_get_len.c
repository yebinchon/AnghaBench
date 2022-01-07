
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifclassq {int dummy; } ;
typedef int mbuf_svc_class_t ;


 int IFCQ_LEN (struct ifclassq*) ;
 int IFCQ_LEN_SC (struct ifclassq*,int ,int *,int *,int) ;
 int IFCQ_LOCK (struct ifclassq*) ;
 int IFCQ_UNLOCK (struct ifclassq*) ;
 int MBUF_SC_UNSPEC ;
 int MBUF_VALID_SC (int ) ;
 int VERIFY (int) ;

int
ifclassq_get_len(struct ifclassq *ifq, mbuf_svc_class_t sc, u_int32_t *packets,
    u_int32_t *bytes)
{
 int err = 0;

 IFCQ_LOCK(ifq);
 if (sc == MBUF_SC_UNSPEC) {
  VERIFY(packets != ((void*)0));
  *packets = IFCQ_LEN(ifq);
 } else {
  VERIFY(MBUF_VALID_SC(sc));
  VERIFY(packets != ((void*)0) && bytes != ((void*)0));
  IFCQ_LEN_SC(ifq, sc, packets, bytes, err);
 }
 IFCQ_UNLOCK(ifq);

 return (err);
}
