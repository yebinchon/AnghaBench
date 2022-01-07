
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int dummy; } ;
struct radix_node_head {int dummy; } ;
struct radix_node {int dummy; } ;
typedef int rn_matchf_t ;


 int RT_LOCK_SPIN (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int in6_validate (struct radix_node*) ;
 struct radix_node* rn_match_args (void*,struct radix_node_head*,int *,void*) ;

__attribute__((used)) static struct radix_node *
in6_matroute_args(void *v_arg, struct radix_node_head *head,
    rn_matchf_t *f, void *w)
{
 struct radix_node *rn = rn_match_args(v_arg, head, f, w);

 if (rn != ((void*)0)) {
  RT_LOCK_SPIN((struct rtentry *)rn);
  in6_validate(rn);
  RT_UNLOCK((struct rtentry *)rn);
 }
 return (rn);
}
