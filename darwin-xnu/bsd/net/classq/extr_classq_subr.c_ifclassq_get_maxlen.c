
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifclassq {int dummy; } ;


 int IFCQ_MAXLEN (struct ifclassq*) ;

u_int32_t
ifclassq_get_maxlen(struct ifclassq *ifq)
{
 return (IFCQ_MAXLEN(ifq));
}
