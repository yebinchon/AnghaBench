
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int pkey ;
typedef int ek ;


 int WPA_GET_BE32 (int const*) ;
 int WPA_PUT_BE32 (int*,int) ;
 int desfunc (int*,int*) ;
 int deskey (int*,int ,int*) ;
 int os_memset (int*,int ,int) ;

void des_encrypt(const u8 *clear, const u8 *key, u8 *cypher)
{
 u8 pkey[8], next, tmp;
 int i;
 u32 ek[32], work[2];


 next = 0;
 for (i = 0; i < 7; i++) {
  tmp = key[i];
  pkey[i] = (tmp >> i) | next | 1;
  next = tmp << (7 - i);
 }
 pkey[i] = next | 1;

 deskey(pkey, 0, ek);

 work[0] = WPA_GET_BE32(clear);
 work[1] = WPA_GET_BE32(clear + 4);
 desfunc(work, ek);
 WPA_PUT_BE32(cypher, work[0]);
 WPA_PUT_BE32(cypher + 4, work[1]);

 os_memset(pkey, 0, sizeof(pkey));
 os_memset(ek, 0, sizeof(ek));
}
