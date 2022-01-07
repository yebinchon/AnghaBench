
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node {int rn_flags; struct radix_mask* rn_mklist; int rn_mask; int rn_bit; } ;
struct radix_mask {int rm_flags; struct radix_mask* rm_mklist; int rm_mask; struct radix_node* rm_leaf; int rm_bit; } ;


 int Bzero (struct radix_mask*,int) ;
 int LOG_ERR ;
 int MKGet (struct radix_mask*) ;
 int RNF_NORMAL ;
 int log (int ,char*) ;

__attribute__((used)) static struct radix_mask *
rn_new_radix_mask(struct radix_node *tt, struct radix_mask *next)
{
 struct radix_mask *m;

 MKGet(m);
 if (m == 0) {
  log(LOG_ERR, "Mask for route not entered\n");
  return (((void*)0));
 }
 Bzero(m, sizeof *m);
 m->rm_bit = tt->rn_bit;
 m->rm_flags = tt->rn_flags;
 if (tt->rn_flags & RNF_NORMAL)
  m->rm_leaf = tt;
 else
  m->rm_mask = tt->rn_mask;
 m->rm_mklist = next;
 tt->rn_mklist = m;
 return m;
}
