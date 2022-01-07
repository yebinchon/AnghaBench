
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int u_int32_t ;
struct ifclassq {int ifcq_type; int ifcq_dropcnt; int ifcq_xmitcnt; } ;
struct if_ifclassq_stats {int ifqs_scheduler; int ifqs_dropcnt; int ifqs_xmitcnt; int ifqs_maxlen; int ifqs_len; } ;
typedef int caddr_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int IFCQ_IS_READY (struct ifclassq*) ;
 int IFCQ_LEN (struct ifclassq*) ;
 int IFCQ_LOCK (struct ifclassq*) ;
 int IFCQ_MAXLEN (struct ifclassq*) ;
 int IFCQ_UNLOCK (struct ifclassq*) ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int _FREE (struct if_ifclassq_stats*,int ) ;
 struct if_ifclassq_stats* _MALLOC (int,int ,int) ;
 int copyout (int ,int ,int) ;
 int pktsched_getqstats (struct ifclassq*,int,struct if_ifclassq_stats*) ;

int
ifclassq_getqstats(struct ifclassq *ifq, u_int32_t qid, void *ubuf,
    u_int32_t *nbytes)
{
 struct if_ifclassq_stats *ifqs;
 int err;

 if (*nbytes < sizeof (*ifqs))
  return (EINVAL);

 ifqs = _MALLOC(sizeof (*ifqs), M_TEMP, M_WAITOK | M_ZERO);
 if (ifqs == ((void*)0))
  return (ENOMEM);

 IFCQ_LOCK(ifq);
 if (!IFCQ_IS_READY(ifq)) {
  IFCQ_UNLOCK(ifq);
  _FREE(ifqs, M_TEMP);
  return (ENXIO);
 }

 ifqs->ifqs_len = IFCQ_LEN(ifq);
 ifqs->ifqs_maxlen = IFCQ_MAXLEN(ifq);
 *(&ifqs->ifqs_xmitcnt) = *(&ifq->ifcq_xmitcnt);
 *(&ifqs->ifqs_dropcnt) = *(&ifq->ifcq_dropcnt);
 ifqs->ifqs_scheduler = ifq->ifcq_type;

 err = pktsched_getqstats(ifq, qid, ifqs);
 IFCQ_UNLOCK(ifq);

 if (err == 0 && (err = copyout((caddr_t)ifqs,
     (user_addr_t)(uintptr_t)ubuf, sizeof (*ifqs))) == 0)
  *nbytes = sizeof (*ifqs);

 _FREE(ifqs, M_TEMP);

 return (err);
}
