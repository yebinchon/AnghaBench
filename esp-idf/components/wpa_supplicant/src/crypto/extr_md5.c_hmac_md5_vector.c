
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int k_pad ;


 size_t MD5_MAC_LEN ;
 int md5_vector (int,int const**,size_t*,int*) ;
 int os_memcpy (int*,int const*,size_t) ;
 int os_memset (int*,int ,int) ;

int
hmac_md5_vector(const u8 *key, size_t key_len, size_t num_elem,
      const u8 *addr[], const size_t *len, u8 *mac)
{
 u8 k_pad[64];
 u8 tk[16];
 const u8 *_addr[6];
 size_t i, _len[6];

 if (num_elem > 5) {




  return -1;
 }


        if (key_len > 64) {
  if (md5_vector(1, &key, &key_len, tk))
   return -1;
  key = tk;
  key_len = 16;
        }
 os_memset(k_pad, 0, sizeof(k_pad));
 os_memcpy(k_pad, key, key_len);


 for (i = 0; i < 64; i++)
  k_pad[i] ^= 0x36;


 _addr[0] = k_pad;
 _len[0] = 64;
 for (i = 0; i < num_elem; i++) {
  _addr[i + 1] = addr[i];
  _len[i + 1] = len[i];
 }
 if (md5_vector(1 + num_elem, _addr, _len, mac))
  return -1;

 os_memset(k_pad, 0, sizeof(k_pad));
 os_memcpy(k_pad, key, key_len);

 for (i = 0; i < 64; i++)
  k_pad[i] ^= 0x5c;


 _addr[0] = k_pad;
 _len[0] = 64;
 _addr[1] = mac;
 _len[1] = MD5_MAC_LEN;
 return md5_vector(2, _addr, _len, mac);
}
