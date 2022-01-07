
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int nsid ;


 int SHA1_MAC_LEN ;
 int os_memcpy (int*,int*,int) ;
 int sha1_vector (int,int const**,size_t*,int*) ;

void uuid_gen_mac_addr(const u8 *mac_addr, u8 *uuid)
{
 const u8 *addr[2];
 size_t len[2];
 u8 hash[SHA1_MAC_LEN];
 u8 nsid[16] = {
  0x52, 0x64, 0x80, 0xf8,
  0xc9, 0x9b,
  0x4b, 0xe5,
  0xa6, 0x55,
  0x58, 0xed, 0x5f, 0x5d, 0x60, 0x84
 };

 addr[0] = nsid;
 len[0] = sizeof(nsid);
 addr[1] = mac_addr;
 len[1] = 6;
 sha1_vector(2, addr, len, hash);
 os_memcpy(uuid, hash, 16);


 uuid[6] = (5 << 4) | (uuid[6] & 0x0f);


 uuid[8] = 0x80 | (uuid[8] & 0x3f);
}
