
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int ;
typedef int u_char ;
struct ah_algorithm_state {scalar_t__ foo; TYPE_1__* sav; } ;
typedef int digest ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int key_auth; } ;
typedef int SHA1_CTX ;


 int FREE (scalar_t__,int ) ;
 int M_TEMP ;
 int SHA1Final (scalar_t__,int *) ;
 int SHA1Update (int *,int *,int ) ;
 int SHA1_RESULTLEN ;
 scalar_t__ _KEYBUF (int ) ;
 scalar_t__ _KEYLEN (int ) ;
 int bcopy (int *,void*,size_t) ;
 int panic (char*) ;

__attribute__((used)) static void
ah_keyed_sha1_result(struct ah_algorithm_state *state, caddr_t addr, size_t l)
{
 u_char digest[SHA1_RESULTLEN] __attribute__((aligned(4)));
 SHA1_CTX *ctxt;

 if (!state || !state->foo)
  panic("ah_keyed_sha1_result: what?");
 ctxt = (SHA1_CTX *)state->foo;

 if (state->sav) {
  SHA1Update(ctxt, (u_int8_t *)_KEYBUF(state->sav->key_auth),
   (u_int)_KEYLEN(state->sav->key_auth));
 }
 SHA1Final((caddr_t)&digest[0], ctxt);
 bcopy(&digest[0], (void *)addr, sizeof(digest) > l ? l : sizeof(digest));

 FREE(state->foo, M_TEMP);
}
