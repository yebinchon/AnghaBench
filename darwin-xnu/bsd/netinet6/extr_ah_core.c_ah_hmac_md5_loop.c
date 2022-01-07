
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ah_algorithm_state {scalar_t__ foo; } ;
typedef scalar_t__ caddr_t ;
typedef int MD5_CTX ;


 int MD5Update (int *,scalar_t__,size_t) ;
 int panic (char*) ;

__attribute__((used)) static void
ah_hmac_md5_loop(struct ah_algorithm_state *state, caddr_t addr, size_t len)
{
 MD5_CTX *ctxt;

 if (!state || !state->foo)
  panic("ah_hmac_md5_loop: what?");
 ctxt = (MD5_CTX *)(void *)(((caddr_t)state->foo) + 128);
 MD5Update(ctxt, addr, len);
}
