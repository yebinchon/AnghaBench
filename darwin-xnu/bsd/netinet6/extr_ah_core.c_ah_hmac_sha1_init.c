
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct secasvar {int key_auth; } ;
struct ah_algorithm_state {struct secasvar* sav; void* foo; } ;
typedef int SHA1_CTX ;


 int ENOBUFS ;
 int M_NOWAIT ;
 int M_TEMP ;
 int SHA1Final (int*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,int*,int) ;
 int SHA1_RESULTLEN ;
 int* _KEYBUF (int ) ;
 int _KEYLEN (int ) ;
 scalar_t__ _MALLOC (int,int ,int ) ;
 int bcopy (int*,int*,size_t) ;
 int bzero (int*,int) ;
 int panic (char*) ;

__attribute__((used)) static int
ah_hmac_sha1_init(struct ah_algorithm_state *state, struct secasvar *sav)
{
 u_char *ipad;
 u_char *opad;
 SHA1_CTX *ctxt;
 u_char tk[SHA1_RESULTLEN] __attribute__((aligned(4)));
 u_char *key;
 size_t keylen;
 size_t i;

 if (!state)
  panic("ah_hmac_sha1_init: what?");

 state->sav = sav;
 state->foo = (void *)_MALLOC(64 + 64 + sizeof(SHA1_CTX),
   M_TEMP, M_NOWAIT);
 if (!state->foo)
  return ENOBUFS;

 ipad = (u_char *)state->foo;
 opad = (u_char *)(ipad + 64);
 ctxt = (SHA1_CTX *)(void *)(opad + 64);


 if (64 < _KEYLEN(state->sav->key_auth)) {
  SHA1Init(ctxt);
  SHA1Update(ctxt, _KEYBUF(state->sav->key_auth),
   _KEYLEN(state->sav->key_auth));
  SHA1Final(&tk[0], ctxt);
  key = &tk[0];
  keylen = SHA1_RESULTLEN;
 } else {
  key = (u_char *) _KEYBUF(state->sav->key_auth);
  keylen = _KEYLEN(state->sav->key_auth);
 }

 bzero(ipad, 64);
 bzero(opad, 64);
 bcopy(key, ipad, keylen);
 bcopy(key, opad, keylen);
 for (i = 0; i < 64; i++) {
  ipad[i] ^= 0x36;
  opad[i] ^= 0x5c;
 }

 SHA1Init(ctxt);
 SHA1Update(ctxt, ipad, 64);

 return 0;
}
