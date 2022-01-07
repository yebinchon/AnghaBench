
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;


 int SHA1_MAC_LEN ;
 scalar_t__ hmac_sha1 (unsigned char*,size_t,unsigned char*,int,unsigned char*) ;
 scalar_t__ hmac_sha1_vector (unsigned char*,size_t,int,unsigned char const**,size_t*,unsigned char*) ;
 int os_memcpy (unsigned char*,unsigned char*,int) ;
 size_t os_strlen (char const*) ;

__attribute__((used)) static int
pbkdf2_sha1_f(const char *passphrase, const char *ssid,
        size_t ssid_len, int iterations, unsigned int count,
        u8 *digest)
{
 unsigned char tmp[SHA1_MAC_LEN], tmp2[SHA1_MAC_LEN];
 int i, j;
 unsigned char count_buf[4];
 const u8 *addr[2];
 size_t len[2];
 size_t passphrase_len = os_strlen(passphrase);

 addr[0] = (u8 *) ssid;
 len[0] = ssid_len;
 addr[1] = count_buf;
 len[1] = 4;







 count_buf[0] = (count >> 24) & 0xff;
 count_buf[1] = (count >> 16) & 0xff;
 count_buf[2] = (count >> 8) & 0xff;
 count_buf[3] = count & 0xff;
 if (hmac_sha1_vector((u8 *) passphrase, passphrase_len, 2, addr, len,
        tmp))
  return -1;
 os_memcpy(digest, tmp, SHA1_MAC_LEN);

 for (i = 1; i < iterations; i++) {
  if (hmac_sha1((u8 *) passphrase, passphrase_len, tmp,
         SHA1_MAC_LEN, tmp2))
   return -1;
  os_memcpy(tmp, tmp2, SHA1_MAC_LEN);
  for (j = 0; j < SHA1_MAC_LEN; j++)
   digest[j] ^= tmp2[j];
 }

 return 0;
}
