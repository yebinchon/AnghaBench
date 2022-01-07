
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int fq_t ;
struct TYPE_7__ {int fqs_ifq; } ;
typedef TYPE_1__ fq_if_t ;
struct TYPE_8__ {scalar_t__ flow; int bytes; int packets; int sc; } ;
typedef TYPE_2__ cqrq_purge_sc_t ;


 int FALSE ;
 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int QP_INVALID ;
 int VERIFY (int) ;
 int * fq_if_hash_pkt (TYPE_1__*,scalar_t__,int ,int ,int ,int ) ;
 int fq_if_purge_flow (TYPE_1__*,int *,int *,int *) ;

__attribute__((used)) static void
fq_if_purge_sc(fq_if_t *fqs, cqrq_purge_sc_t *req)
{
 fq_t *fq;

 IFCQ_LOCK_ASSERT_HELD(fqs->fqs_ifq);
 req->packets = req->bytes = 0;
 VERIFY(req->flow != 0);


 fq = fq_if_hash_pkt(fqs, req->flow, req->sc, 0, FALSE, QP_INVALID);

 if (fq != ((void*)0))
  fq_if_purge_flow(fqs, fq, &req->packets, &req->bytes);
}
