
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifclassq {int dummy; } ;


 int IFCQ_LOCK (struct ifclassq*) ;
 int IFCQ_SET_MAXLEN (struct ifclassq*,int ) ;
 int IFCQ_UNLOCK (struct ifclassq*) ;
 int if_sndq_maxlen ;

void
ifclassq_set_maxlen(struct ifclassq *ifq, u_int32_t maxqlen)
{
 IFCQ_LOCK(ifq);
 if (maxqlen == 0)
  maxqlen = if_sndq_maxlen;
 IFCQ_SET_MAXLEN(ifq, maxqlen);
 IFCQ_UNLOCK(ifq);
}
