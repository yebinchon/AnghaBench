
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_state_key {int flowhash; int flowsrc; int * app_state; int proto_variant; int direction; int proto; int af_gwy; int af_lan; int ext_gwy; int ext_lan; int gwy; int lan; int states; } ;
struct pf_state {int dummy; } ;


 int PR_WAITOK ;
 int TAILQ_INIT (int *) ;
 int VERIFY (int ) ;
 int bcopy (int *,int *,int) ;
 int bzero (struct pf_state_key*,int) ;
 int pf_attach_state (struct pf_state_key*,struct pf_state*,int ) ;
 int pf_state_key_pl ;
 struct pf_state_key* pool_get (int *,int ) ;

struct pf_state_key *
pf_alloc_state_key(struct pf_state *s, struct pf_state_key *psk)
{
 struct pf_state_key *sk;

 if ((sk = pool_get(&pf_state_key_pl, PR_WAITOK)) == ((void*)0))
  return (((void*)0));
 bzero(sk, sizeof (*sk));
 TAILQ_INIT(&sk->states);
 pf_attach_state(sk, s, 0);


 if (psk != ((void*)0)) {
  bcopy(&psk->lan, &sk->lan, sizeof (sk->lan));
  bcopy(&psk->gwy, &sk->gwy, sizeof (sk->gwy));
  bcopy(&psk->ext_lan, &sk->ext_lan, sizeof (sk->ext_lan));
  bcopy(&psk->ext_gwy, &sk->ext_gwy, sizeof (sk->ext_gwy));
  sk->af_lan = psk->af_lan;
  sk->af_gwy = psk->af_gwy;
  sk->proto = psk->proto;
  sk->direction = psk->direction;
  sk->proto_variant = psk->proto_variant;
  VERIFY(psk->app_state == ((void*)0));
  sk->flowsrc = psk->flowsrc;
  sk->flowhash = psk->flowhash;

 }

 return (sk);
}
