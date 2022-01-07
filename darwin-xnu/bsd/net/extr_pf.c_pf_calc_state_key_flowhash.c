
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int32_t ;
struct TYPE_15__ {scalar_t__ spi; } ;
struct TYPE_16__ {TYPE_7__ xport; int addr; } ;
struct TYPE_11__ {scalar_t__ spi; } ;
struct TYPE_12__ {TYPE_3__ xport; int addr; } ;
struct pf_state_key {int proto; int af_lan; TYPE_8__ lan; TYPE_4__ ext_lan; } ;
struct TYPE_13__ {scalar_t__ spi; } ;
struct TYPE_14__ {TYPE_5__ xport; int addr; } ;
struct TYPE_9__ {scalar_t__ spi; } ;
struct TYPE_10__ {TYPE_1__ xport; int addr; } ;
struct pf_flowhash_key {int proto; int af; TYPE_6__ ap2; TYPE_2__ ap1; } ;
typedef int fh ;


 scalar_t__ PF_ALEQ (int *,int *,int ) ;
 int RandomULong () ;
 int bcopy (int *,int *,int) ;
 int bzero (struct pf_flowhash_key*,int) ;
 scalar_t__ net_flowhash (struct pf_flowhash_key*,int,int ) ;
 int pf_hash_seed ;

u_int32_t
pf_calc_state_key_flowhash(struct pf_state_key *sk)
{
 struct pf_flowhash_key fh __attribute__((aligned(8)));
 uint32_t flowhash = 0;

 bzero(&fh, sizeof (fh));
 if (PF_ALEQ(&sk->lan.addr, &sk->ext_lan.addr, sk->af_lan)) {
  bcopy(&sk->lan.addr, &fh.ap1.addr, sizeof (fh.ap1.addr));
  bcopy(&sk->ext_lan.addr, &fh.ap2.addr, sizeof (fh.ap2.addr));
 } else {
  bcopy(&sk->ext_lan.addr, &fh.ap1.addr, sizeof (fh.ap1.addr));
  bcopy(&sk->lan.addr, &fh.ap2.addr, sizeof (fh.ap2.addr));
 }
 if (sk->lan.xport.spi <= sk->ext_lan.xport.spi) {
  fh.ap1.xport.spi = sk->lan.xport.spi;
  fh.ap2.xport.spi = sk->ext_lan.xport.spi;
 } else {
  fh.ap1.xport.spi = sk->ext_lan.xport.spi;
  fh.ap2.xport.spi = sk->lan.xport.spi;
 }
 fh.af = sk->af_lan;
 fh.proto = sk->proto;

try_again:
 flowhash = net_flowhash(&fh, sizeof (fh), pf_hash_seed);
 if (flowhash == 0) {

  pf_hash_seed = RandomULong();
  goto try_again;
 }

 return (flowhash);
}
