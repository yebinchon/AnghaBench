
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet {int if_eflags; int if_snd; } ;
typedef int errno_t ;


 int EINVAL ;
 int ENXIO ;
 int IFEF_TXSTART ;
 int ifclassq_get_maxlen (int *) ;

errno_t
ifnet_get_sndq_maxlen(struct ifnet *ifp, u_int32_t *maxqlen)
{
 if (ifp == ((void*)0) || maxqlen == ((void*)0))
  return (EINVAL);
 else if (!(ifp->if_eflags & IFEF_TXSTART))
  return (ENXIO);

 *maxqlen = ifclassq_get_maxlen(&ifp->if_snd);

 return (0);
}
