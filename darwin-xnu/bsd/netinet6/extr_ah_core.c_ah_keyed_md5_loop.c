
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ah_algorithm_state {scalar_t__ foo; } ;
typedef int caddr_t ;
typedef int MD5_CTX ;


 int MD5Update (int *,int ,size_t) ;
 int panic (char*) ;

__attribute__((used)) static void
ah_keyed_md5_loop(struct ah_algorithm_state *state, caddr_t addr, size_t len)
{
 if (!state)
  panic("ah_keyed_md5_loop: what?");

 MD5Update((MD5_CTX *)state->foo, addr, len);
}
