
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
typedef int MD5_CTX ;


 int FREE (scalar_t__,int ) ;
 int MD5Final (int *,int *) ;
 int MD5Update (int *,int *,int ) ;
 int M_TEMP ;
 scalar_t__ _KEYBUF (int ) ;
 scalar_t__ _KEYLEN (int ) ;
 int bcopy (int *,void*,size_t) ;
 int panic (char*) ;

__attribute__((used)) static void
ah_keyed_md5_result(struct ah_algorithm_state *state, caddr_t addr, size_t l)
{
 u_char digest[16] __attribute__((aligned(4)));

 if (!state)
  panic("ah_keyed_md5_result: what?");

 if (state->sav) {
  MD5Update((MD5_CTX *)state->foo,
   (u_int8_t *)_KEYBUF(state->sav->key_auth),
   (u_int)_KEYLEN(state->sav->key_auth));
 }
 MD5Final(&digest[0], (MD5_CTX *)state->foo);
 FREE(state->foo, M_TEMP);
 bcopy(&digest[0], (void *)addr, sizeof(digest) > l ? l : sizeof(digest));
}
