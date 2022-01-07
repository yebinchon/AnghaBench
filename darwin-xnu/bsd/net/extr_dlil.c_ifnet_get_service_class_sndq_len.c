
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet {int if_eflags; int if_snd; } ;
typedef int mbuf_svc_class_t ;
typedef int errno_t ;


 int EINVAL ;
 int ENXIO ;
 int IFEF_TXSTART ;
 int MBUF_VALID_SC (int ) ;
 int ifclassq_get_len (int *,int ,int *,int *) ;

errno_t
ifnet_get_service_class_sndq_len(struct ifnet *ifp, mbuf_svc_class_t sc,
    u_int32_t *pkts, u_int32_t *bytes)
{
 errno_t err;

 if (ifp == ((void*)0) || !MBUF_VALID_SC(sc) ||
     (pkts == ((void*)0) && bytes == ((void*)0)))
  err = EINVAL;
 else if (!(ifp->if_eflags & IFEF_TXSTART))
  err = ENXIO;
 else
  err = ifclassq_get_len(&ifp->if_snd, sc, pkts, bytes);

 return (err);
}
