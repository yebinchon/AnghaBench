
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct inpcb {int inp_vflag; int inp_flags2; scalar_t__ inp_flowhash; int inp_ip_p; int inp_fport; int inp_lport; int inp_dependfaddr; int inp_dependladdr; } ;
struct inp_flowhash_key {scalar_t__ infh_rand2; scalar_t__ infh_rand1; int infh_proto; int infh_af; int infh_fport; int infh_lport; int infh_faddr; int infh_laddr; } ;
typedef int fh ;


 int AF_INET ;
 int AF_INET6 ;
 int INP2_IN_FCTREE ;
 int INP_IPV6 ;
 struct inpcb* RB_FIND (int ,int *,struct inpcb*) ;
 int RB_INSERT (int ,int *,struct inpcb*) ;
 scalar_t__ RandomULong () ;
 int bcopy (int *,int *,int) ;
 int bzero (struct inp_flowhash_key*,int) ;
 int inp_fc_lck ;
 int inp_fc_tree ;
 scalar_t__ inp_hash_seed ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ net_flowhash (struct inp_flowhash_key*,int,scalar_t__) ;

u_int32_t
inp_calc_flowhash(struct inpcb *inp)
{
 struct inp_flowhash_key fh __attribute__((aligned(8)));
 u_int32_t flowhash = 0;
 struct inpcb *tmp_inp = ((void*)0);

 if (inp_hash_seed == 0)
  inp_hash_seed = RandomULong();

 bzero(&fh, sizeof (fh));

 bcopy(&inp->inp_dependladdr, &fh.infh_laddr, sizeof (fh.infh_laddr));
 bcopy(&inp->inp_dependfaddr, &fh.infh_faddr, sizeof (fh.infh_faddr));

 fh.infh_lport = inp->inp_lport;
 fh.infh_fport = inp->inp_fport;
 fh.infh_af = (inp->inp_vflag & INP_IPV6) ? AF_INET6 : AF_INET;
 fh.infh_proto = inp->inp_ip_p;
 fh.infh_rand1 = RandomULong();
 fh.infh_rand2 = RandomULong();

try_again:
 flowhash = net_flowhash(&fh, sizeof (fh), inp_hash_seed);
 if (flowhash == 0) {

  inp_hash_seed = RandomULong();
  goto try_again;
 }

 inp->inp_flowhash = flowhash;


 lck_mtx_lock_spin(&inp_fc_lck);
 tmp_inp = RB_FIND(inp_fc_tree, &inp_fc_tree, inp);
 if (tmp_inp != ((void*)0)) {






  lck_mtx_unlock(&inp_fc_lck);

  inp_hash_seed = RandomULong();
  goto try_again;
 }

 RB_INSERT(inp_fc_tree, &inp_fc_tree, inp);
 inp->inp_flags2 |= INP2_IN_FCTREE;
 lck_mtx_unlock(&inp_fc_lck);

 return (flowhash);
}
