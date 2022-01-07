
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {int llt_match_prefix; int llt_free_entry; int llt_fill_sa_entry; int llt_hash; int llt_dump_entry; int llt_delete_entry; int llt_alloc_entry; int llt_lookup; struct ifnet* llt_ifp; int llt_af; } ;
struct ifnet {int dummy; } ;


 int AF_INET6 ;
 int IN6_LLTBL_DEFAULT_HSIZE ;
 int in6_lltable_alloc ;
 int in6_lltable_delete_entry ;
 int in6_lltable_dump_entry ;
 int in6_lltable_fill_sa_entry ;
 int in6_lltable_free_entry ;
 int in6_lltable_hash ;
 int in6_lltable_lookup ;
 int in6_lltable_match_prefix ;
 struct lltable* lltable_allocate_htbl (int ) ;
 int lltable_link (struct lltable*) ;

struct lltable *
in6_lltattach(struct ifnet *ifp)
{
 struct lltable *llt;

 llt = lltable_allocate_htbl(IN6_LLTBL_DEFAULT_HSIZE);
 llt->llt_af = AF_INET6;
 llt->llt_ifp = ifp;

 llt->llt_lookup = in6_lltable_lookup;
 llt->llt_alloc_entry = in6_lltable_alloc;
 llt->llt_delete_entry = in6_lltable_delete_entry;
 llt->llt_dump_entry = in6_lltable_dump_entry;
 llt->llt_hash = in6_lltable_hash;
 llt->llt_fill_sa_entry = in6_lltable_fill_sa_entry;
 llt->llt_free_entry = in6_lltable_free_entry;
 llt->llt_match_prefix = in6_lltable_match_prefix;
 lltable_link(llt);

 return (llt);
}
