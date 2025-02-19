
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ah_algorithm_state {scalar_t__ foo; } ;
typedef scalar_t__ caddr_t ;
typedef int SHA1_CTX ;


 int SHA1Update (int *,scalar_t__,size_t) ;
 int panic (char*) ;

__attribute__((used)) static void
ah_hmac_sha1_loop(struct ah_algorithm_state *state, caddr_t addr, size_t len)
{
 SHA1_CTX *ctxt;

 if (!state || !state->foo)
  panic("ah_hmac_sha1_loop: what?");

 ctxt = (SHA1_CTX *)(void *)(((u_char *)state->foo) + 128);
 SHA1Update(ctxt, (caddr_t)addr, (size_t)len);
}
