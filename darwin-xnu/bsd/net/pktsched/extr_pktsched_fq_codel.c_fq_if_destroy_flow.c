
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct TYPE_11__ {int fq_flowhash; } ;
typedef TYPE_2__ fq_t ;
struct TYPE_12__ {int fqs_ifq; int * fqs_flows; } ;
typedef TYPE_3__ fq_if_t ;
struct TYPE_10__ {int fcl_flows_cnt; } ;
struct TYPE_13__ {TYPE_1__ fcl_stat; } ;
typedef TYPE_4__ fq_if_classq_t ;


 size_t FQ_IF_FLOW_HASH_ID (int ) ;
 int IFCQ_CONVERT_LOCK (int ) ;
 int SLIST_REMOVE (int *,TYPE_2__*,int ,int ) ;
 int flowq ;
 int fq_destroy (TYPE_2__*) ;
 int fq_hashlink ;

void
fq_if_destroy_flow(fq_if_t *fqs, fq_if_classq_t *fq_cl, fq_t *fq)
{
 u_int8_t hash_id;
 hash_id = FQ_IF_FLOW_HASH_ID(fq->fq_flowhash);
 SLIST_REMOVE(&fqs->fqs_flows[hash_id], fq, flowq,
     fq_hashlink);
 fq_cl->fcl_stat.fcl_flows_cnt--;
 IFCQ_CONVERT_LOCK(fqs->fqs_ifq);
 fq_destroy(fq);

}
