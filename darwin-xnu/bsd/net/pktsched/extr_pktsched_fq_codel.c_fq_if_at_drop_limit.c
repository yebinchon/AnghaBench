
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fqs_pkt_droplimit; int fqs_ifq; } ;
typedef TYPE_1__ fq_if_t ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ IFCQ_LEN (int ) ;
 int TRUE ;

inline boolean_t
fq_if_at_drop_limit(fq_if_t *fqs)
{
 return (((IFCQ_LEN(fqs->fqs_ifq) >= fqs->fqs_pkt_droplimit) ?
     TRUE : FALSE));
}
