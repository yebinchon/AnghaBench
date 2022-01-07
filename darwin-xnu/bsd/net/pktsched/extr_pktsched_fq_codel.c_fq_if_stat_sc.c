
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct TYPE_9__ {TYPE_3__* fqs_classq; } ;
typedef TYPE_2__ fq_if_t ;
struct TYPE_8__ {int fcl_byte_cnt; int fcl_pkt_cnt; } ;
struct TYPE_10__ {TYPE_1__ fcl_stat; } ;
typedef TYPE_3__ fq_if_classq_t ;
struct TYPE_11__ {int bytes; int packets; int sc; } ;
typedef TYPE_4__ cqrq_stat_sc_t ;


 size_t fq_if_service_to_priority (TYPE_2__*,int ) ;

void
fq_if_stat_sc(fq_if_t *fqs, cqrq_stat_sc_t *stat)
{
 u_int32_t pri;
 fq_if_classq_t *fq_cl;

 if (stat == ((void*)0))
  return;

 pri = fq_if_service_to_priority(fqs, stat->sc);
 fq_cl = &fqs->fqs_classq[pri];
 stat->packets = fq_cl->fcl_stat.fcl_pkt_cnt;
 stat->bytes = fq_cl->fcl_stat.fcl_byte_cnt;
}
