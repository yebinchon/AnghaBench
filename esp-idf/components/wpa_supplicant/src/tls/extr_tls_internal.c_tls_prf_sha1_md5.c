
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;


 int MD5_MAC_LEN ;
 int SHA1_MAC_LEN ;
 int hmac_md5 (unsigned char const*,size_t,unsigned char*,int,unsigned char*) ;
 int hmac_md5_vector (unsigned char const*,size_t,int,unsigned char const**,size_t*,unsigned char*) ;
 int hmac_sha1 (unsigned char const*,size_t,unsigned char*,int,unsigned char*) ;
 int hmac_sha1_vector (unsigned char const*,size_t,int,unsigned char const**,size_t*,unsigned char*) ;
 size_t os_strlen (char const*) ;

int tls_prf_sha1_md5(const u8 *secret, size_t secret_len, const char *label,
       const u8 *seed, size_t seed_len, u8 *out, size_t outlen)
{
 size_t L_S1, L_S2, i;
 const u8 *S1, *S2;
 u8 A_MD5[MD5_MAC_LEN], A_SHA1[SHA1_MAC_LEN];
 u8 P_MD5[MD5_MAC_LEN], P_SHA1[SHA1_MAC_LEN];
 int MD5_pos, SHA1_pos;
 const u8 *MD5_addr[3];
 size_t MD5_len[3];
 const unsigned char *SHA1_addr[3];
 size_t SHA1_len[3];

 if (secret_len & 1)
  return -1;

 MD5_addr[0] = A_MD5;
 MD5_len[0] = MD5_MAC_LEN;
 MD5_addr[1] = (unsigned char *) label;
 MD5_len[1] = os_strlen(label);
 MD5_addr[2] = seed;
 MD5_len[2] = seed_len;

 SHA1_addr[0] = A_SHA1;
 SHA1_len[0] = SHA1_MAC_LEN;
 SHA1_addr[1] = (unsigned char *) label;
 SHA1_len[1] = os_strlen(label);
 SHA1_addr[2] = seed;
 SHA1_len[2] = seed_len;







 L_S1 = L_S2 = (secret_len + 1) / 2;
 S1 = secret;
 S2 = secret + L_S1;
 if (secret_len & 1) {

  S2--;
 }

 hmac_md5_vector(S1, L_S1, 2, &MD5_addr[1], &MD5_len[1], A_MD5);
 hmac_sha1_vector(S2, L_S2, 2, &SHA1_addr[1], &SHA1_len[1], A_SHA1);

 MD5_pos = MD5_MAC_LEN;
 SHA1_pos = SHA1_MAC_LEN;
 for (i = 0; i < outlen; i++) {
  if (MD5_pos == MD5_MAC_LEN) {
   hmac_md5_vector(S1, L_S1, 3, MD5_addr, MD5_len, P_MD5);
   MD5_pos = 0;
   hmac_md5(S1, L_S1, A_MD5, MD5_MAC_LEN, A_MD5);
  }
  if (SHA1_pos == SHA1_MAC_LEN) {
   hmac_sha1_vector(S2, L_S2, 3, SHA1_addr, SHA1_len,
      P_SHA1);
   SHA1_pos = 0;
   hmac_sha1(S2, L_S2, A_SHA1, SHA1_MAC_LEN, A_SHA1);
  }

  out[i] = P_MD5[MD5_pos] ^ P_SHA1[SHA1_pos];

  MD5_pos++;
  SHA1_pos++;
 }

 return 0;
}
