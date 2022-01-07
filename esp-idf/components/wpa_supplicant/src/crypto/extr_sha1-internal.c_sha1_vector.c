
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int SHA1_CTX ;


 int SHA1Final (int *,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,int const*,size_t const) ;

int
sha1_vector(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac)
{
 SHA1_CTX ctx;
 size_t i;

 SHA1Init(&ctx);
 for (i = 0; i < num_elem; i++)
  SHA1Update(&ctx, addr[i], len[i]);
 SHA1Final(mac, &ctx);
 return 0;
}
