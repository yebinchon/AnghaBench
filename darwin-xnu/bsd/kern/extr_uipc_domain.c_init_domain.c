
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain {int dom_flags; scalar_t__ dom_protohdrlen; int (* dom_init ) (struct domain*) ;int dom_protosw; int dom_mtx_s; int * dom_mtx; } ;


 int DOM_ATTACHED ;
 int DOM_INITIALIZED ;
 scalar_t__ MHLEN ;
 int TAILQ_INIT (int *) ;
 int VERIFY (int) ;
 int _max_linkhdr ;
 scalar_t__ _max_protohdr ;
 int domain_proto_mtx_attr ;
 int domain_proto_mtx_grp ;
 int lck_mtx_init (int *,int ,int ) ;
 scalar_t__ max_datalen ;
 scalar_t__ max_hdr ;
 int max_linkhdr ;
 scalar_t__ max_protohdr ;
 int stub1 (struct domain*) ;

__attribute__((used)) static void
init_domain(struct domain *dp)
{
 VERIFY(dp->dom_flags & DOM_ATTACHED);

 if (!(dp->dom_flags & DOM_INITIALIZED)) {
  lck_mtx_init(&dp->dom_mtx_s, domain_proto_mtx_grp,
      domain_proto_mtx_attr);
  dp->dom_mtx = &dp->dom_mtx_s;
  TAILQ_INIT(&dp->dom_protosw);
  if (dp->dom_init != ((void*)0))
   dp->dom_init(dp);
  dp->dom_flags |= DOM_INITIALIZED;
 }


 if (_max_linkhdr < 16)
  _max_linkhdr = 16;
 _max_linkhdr = max_linkhdr;

 if (dp->dom_protohdrlen > _max_protohdr)
  _max_protohdr = dp->dom_protohdrlen;
 _max_protohdr = max_protohdr;

 max_hdr = max_linkhdr + max_protohdr;
 max_datalen = MHLEN - max_hdr;
}
