
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int ;
struct secasvar {int key_auth; } ;
struct ah_algorithm_state {struct secasvar* sav; void* foo; } ;
typedef int buf ;
typedef int SHA1_CTX ;


 int ENOBUFS ;
 int M_NOWAIT ;
 int M_TEMP ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,int*,int) ;
 scalar_t__ _KEYBUF (int ) ;
 int _KEYLEN (int ) ;
 scalar_t__ _MALLOC (int,int ,int ) ;
 int bzero (int*,int) ;
 int panic (char*) ;

__attribute__((used)) static int
ah_keyed_sha1_init(struct ah_algorithm_state *state, struct secasvar *sav)
{
 SHA1_CTX *ctxt;
 size_t padlen;
 size_t keybitlen;
 u_int8_t buf[32] __attribute__((aligned(4)));

 if (!state)
  panic("ah_keyed_sha1_init: what?");

 state->sav = sav;
 state->foo = (void *)_MALLOC(sizeof(SHA1_CTX), M_TEMP, M_NOWAIT);
 if (!state->foo)
  return ENOBUFS;

 ctxt = (SHA1_CTX *)state->foo;
 SHA1Init(ctxt);

 if (state->sav) {
  SHA1Update(ctxt, (u_int8_t *)_KEYBUF(state->sav->key_auth),
   (u_int)_KEYLEN(state->sav->key_auth));




  if (_KEYLEN(state->sav->key_auth) < 56)
   padlen = 64 - 8 - _KEYLEN(state->sav->key_auth);
  else
   padlen = 64 + 64 - 8 - _KEYLEN(state->sav->key_auth);
  keybitlen = _KEYLEN(state->sav->key_auth);
  keybitlen *= 8;

  buf[0] = 0x80;
  SHA1Update(ctxt, &buf[0], 1);
  padlen--;

  bzero(buf, sizeof(buf));
  while (sizeof(buf) < padlen) {
   SHA1Update(ctxt, &buf[0], sizeof(buf));
   padlen -= sizeof(buf);
  }
  if (padlen) {
   SHA1Update(ctxt, &buf[0], padlen);
  }

  buf[0] = (keybitlen >> 0) & 0xff;
  buf[1] = (keybitlen >> 8) & 0xff;
  buf[2] = (keybitlen >> 16) & 0xff;
  buf[3] = (keybitlen >> 24) & 0xff;
  SHA1Update(ctxt, buf, 8);
 }

 return 0;
}
