
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct iovec {int* iov_base; int iov_len; } ;
struct TYPE_2__ {int octets; } ;
struct in6_cga_prepare {int cga_security_level; TYPE_1__ cga_modifier; } ;
struct in6_addr {int* s6_addr; int* s6_addr8; } ;
typedef int SHA1_CTX ;


 int SHA1Final (int*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,int*,int) ;
 int SHA1_RESULTLEN ;
 int VERIFY (int) ;

__attribute__((used)) static void
in6_cga_generate_iid(const struct in6_cga_prepare *prepare,
    const struct iovec *pubkey, u_int8_t collisions, struct in6_addr *in6)
{
 SHA1_CTX ctx;
 u_int8_t sha1[SHA1_RESULTLEN];

 VERIFY(prepare != ((void*)0));
 VERIFY(prepare->cga_security_level < 8);
 VERIFY(pubkey != ((void*)0) && pubkey->iov_base != ((void*)0));
 VERIFY(in6 != ((void*)0));

 SHA1Init(&ctx);
 SHA1Update(&ctx, &prepare->cga_modifier.octets, 16);
 SHA1Update(&ctx, in6->s6_addr, 8);
 SHA1Update(&ctx, &collisions, 1);
 SHA1Update(&ctx, pubkey->iov_base, pubkey->iov_len);

 SHA1Final(sha1, &ctx);

 in6->s6_addr8[8] =
     (prepare->cga_security_level << 5) | (sha1[0] & 0x1c);
 in6->s6_addr8[9] = sha1[1];
 in6->s6_addr8[10] = sha1[2];
 in6->s6_addr8[11] = sha1[3];
 in6->s6_addr8[12] = sha1[4];
 in6->s6_addr8[13] = sha1[5];
 in6->s6_addr8[14] = sha1[6];
 in6->s6_addr8[15] = sha1[7];
}
