
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef char* caddr_t ;


 int SHA1_RESULTLEN ;
 int VERIFY (int) ;

__attribute__((used)) static void
mptcp_generate_idsn(char *sha_digest, int sha_digest_len, caddr_t idsn,
    int idsn_len)
{
 VERIFY(idsn_len == sizeof (u_int64_t));
 VERIFY(sha_digest_len == SHA1_RESULTLEN);





 idsn[7] = sha_digest[12];
 idsn[6] = sha_digest[13];
 idsn[5] = sha_digest[14];
 idsn[4] = sha_digest[15];
 idsn[3] = sha_digest[16];
 idsn[2] = sha_digest[17];
 idsn[1] = sha_digest[18];
 idsn[0] = sha_digest[19];
 return;
}
