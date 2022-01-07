
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int MD4_CTX ;


 int MD4Final (int *,int *) ;
 int MD4Init (int *) ;
 int MD4Update (int *,int const*,size_t const) ;

int md4_vector(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac)
{
 MD4_CTX ctx;
 size_t i;

 MD4Init(&ctx);
 for (i = 0; i < num_elem; i++)
  MD4Update(&ctx, addr[i], len[i]);
 MD4Final(mac, &ctx);
 return 0;
}
