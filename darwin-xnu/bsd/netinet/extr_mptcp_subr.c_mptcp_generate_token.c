
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int caddr_t ;


 int SHA1_RESULTLEN ;
 int VERIFY (int) ;
 int bcopy (char*,int ,int) ;

__attribute__((used)) static void
mptcp_generate_token(char *sha_digest, int sha_digest_len, caddr_t token,
    int token_len)
{
 VERIFY(token_len == sizeof (u_int32_t));
 VERIFY(sha_digest_len == SHA1_RESULTLEN);


 bcopy(sha_digest, token, sizeof (u_int32_t));
 return;
}
