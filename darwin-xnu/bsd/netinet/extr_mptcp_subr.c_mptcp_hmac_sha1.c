
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
typedef int mptcp_key_t ;
typedef int key_opad ;
typedef int key_ipad ;
typedef int data ;
typedef int SHA1_CTX ;


 int SHA1Final (int *,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,unsigned char*,int) ;
 int SHA1_RESULTLEN ;
 int bzero (int *,int) ;

void
mptcp_hmac_sha1(mptcp_key_t key1, mptcp_key_t key2,
 u_int32_t rand1, u_int32_t rand2, u_char *digest)
{
 SHA1_CTX sha1ctxt;
 mptcp_key_t key_ipad[8] = {0};
 mptcp_key_t key_opad[8] = {0};
 u_int32_t data[2];
 int i;

 bzero(digest, SHA1_RESULTLEN);


 key_ipad[0] = key1;
 key_ipad[1] = key2;

 key_opad[0] = key1;
 key_opad[1] = key2;


 data[0] = rand1;
 data[1] = rand2;





 for (i = 0; i < 8; i++) {
  key_ipad[i] ^= 0x3636363636363636;
  key_opad[i] ^= 0x5c5c5c5c5c5c5c5c;
 }


 SHA1Init(&sha1ctxt);
 SHA1Update(&sha1ctxt, (unsigned char *)key_ipad, sizeof (key_ipad));
 SHA1Update(&sha1ctxt, (unsigned char *)data, sizeof (data));
 SHA1Final(digest, &sha1ctxt);


 SHA1Init(&sha1ctxt);
 SHA1Update(&sha1ctxt, (unsigned char *)key_opad, sizeof (key_opad));
 SHA1Update(&sha1ctxt, (unsigned char *)digest, SHA1_RESULTLEN);
 SHA1Final(digest, &sha1ctxt);
}
