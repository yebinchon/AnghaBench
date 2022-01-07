
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ah_algorithm_state {scalar_t__ foo; } ;
typedef int digest ;
typedef int * caddr_t ;
typedef int SHA1_CTX ;


 int FREE (scalar_t__,int ) ;
 int M_TEMP ;
 int SHA1Final (int *,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,int *,int) ;
 int SHA1_RESULTLEN ;
 int bcopy (int *,void*,size_t) ;
 int panic (char*) ;

__attribute__((used)) static void
ah_hmac_sha1_result(struct ah_algorithm_state *state, caddr_t addr, size_t l)
{
 u_char digest[SHA1_RESULTLEN] __attribute__((aligned(4)));
 u_char *ipad;
 u_char *opad;
 SHA1_CTX *ctxt;

 if (!state || !state->foo)
  panic("ah_hmac_sha1_result: what?");

 ipad = (u_char *)state->foo;
 opad = (u_char *)(ipad + 64);
 ctxt = (SHA1_CTX *)(void *)(opad + 64);

 SHA1Final((caddr_t)&digest[0], ctxt);

 SHA1Init(ctxt);
 SHA1Update(ctxt, opad, 64);
 SHA1Update(ctxt, (caddr_t)&digest[0], sizeof(digest));
 SHA1Final((caddr_t)&digest[0], ctxt);

 bcopy(&digest[0], (void *)addr, sizeof(digest) > l ? l : sizeof(digest));

 FREE(state->foo, M_TEMP);
}
