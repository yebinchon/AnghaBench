
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mptcp_key_t ;
typedef int SHA1_CTX ;


 int SHA1Final (char*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,unsigned char const*,int) ;

__attribute__((used)) static void
mptcp_do_sha1(mptcp_key_t *key, char *sha_digest)
{
 SHA1_CTX sha1ctxt;
 const unsigned char *sha1_base;
 int sha1_size;

 sha1_base = (const unsigned char *) key;
 sha1_size = sizeof (mptcp_key_t);
 SHA1Init(&sha1ctxt);
 SHA1Update(&sha1ctxt, sha1_base, sha1_size);
 SHA1Final(sha_digest, &sha1ctxt);
}
