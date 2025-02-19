
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;


 int SHA1_MAC_LEN ;
 scalar_t__ hmac_sha1_vector (unsigned char const*,size_t,int,unsigned char const**,size_t*,unsigned char*) ;
 int os_memcpy (unsigned char*,unsigned char*,size_t) ;
 int os_strlen (char const*) ;

int
sha1_prf(const u8 *key, size_t key_len, const char *label,
      const u8 *data, size_t data_len, u8 *buf, size_t buf_len)
{
 u8 counter = 0;
 size_t pos, plen;
 u8 hash[SHA1_MAC_LEN];
 size_t label_len = os_strlen(label) + 1;
 const unsigned char *addr[3];
 size_t len[3];

 addr[0] = (u8 *) label;
 len[0] = label_len;
 addr[1] = data;
 len[1] = data_len;
 addr[2] = &counter;
 len[2] = 1;

 pos = 0;
 while (pos < buf_len) {
  plen = buf_len - pos;
  if (plen >= SHA1_MAC_LEN) {
   if (hmac_sha1_vector(key, key_len, 3, addr, len,
          &buf[pos]))
    return -1;
   pos += SHA1_MAC_LEN;
  } else {
   if (hmac_sha1_vector(key, key_len, 3, addr, len,
          hash))
    return -1;
   os_memcpy(&buf[pos], hash, plen);
   break;
  }
  counter++;
 }

 return 0;
}
