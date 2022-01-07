
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int ;
struct secasvar {int key_auth; } ;
struct ah_algorithm_state {int * foo; struct secasvar* sav; } ;
typedef int buf ;
typedef int MD5_CTX ;


 int ENOBUFS ;
 int MD5Init (int *) ;
 int MD5Update (int *,int*,int) ;
 int M_NOWAIT ;
 int M_TEMP ;
 scalar_t__ _KEYBUF (int ) ;
 int _KEYLEN (int ) ;
 scalar_t__ _MALLOC (int,int ,int ) ;
 int bzero (int*,int) ;
 int panic (char*) ;

__attribute__((used)) static int
ah_keyed_md5_init(struct ah_algorithm_state *state, struct secasvar *sav)
{
 size_t padlen;
 size_t keybitlen;
 u_int8_t buf[32] __attribute__((aligned(4)));

 if (!state)
  panic("ah_keyed_md5_init: what?");

 state->sav = sav;
 state->foo = (void *)_MALLOC(sizeof(MD5_CTX), M_TEMP, M_NOWAIT);
 if (state->foo == ((void*)0))
  return ENOBUFS;

 MD5Init((MD5_CTX *)state->foo);
 if (state->sav) {
  MD5Update((MD5_CTX *)state->foo,
   (u_int8_t *)_KEYBUF(state->sav->key_auth),
   (u_int)_KEYLEN(state->sav->key_auth));






  if (_KEYLEN(state->sav->key_auth) < 56)
   padlen = 64 - 8 - _KEYLEN(state->sav->key_auth);
  else
   padlen = 64 + 64 - 8 - _KEYLEN(state->sav->key_auth);
  keybitlen = _KEYLEN(state->sav->key_auth);
  keybitlen *= 8;

  buf[0] = 0x80;
  MD5Update((MD5_CTX *)state->foo, &buf[0], 1);
  padlen--;

  bzero(buf, sizeof(buf));
  while (sizeof(buf) < padlen) {
   MD5Update((MD5_CTX *)state->foo, &buf[0], sizeof(buf));
   padlen -= sizeof(buf);
  }
  if (padlen) {
   MD5Update((MD5_CTX *)state->foo, &buf[0], padlen);
  }

  buf[0] = (keybitlen >> 0) & 0xff;
  buf[1] = (keybitlen >> 8) & 0xff;
  buf[2] = (keybitlen >> 16) & 0xff;
  buf[3] = (keybitlen >> 24) & 0xff;
  MD5Update((MD5_CTX *)state->foo, buf, 8);
 }

 return 0;
}
