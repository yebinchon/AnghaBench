
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_long ;



__attribute__((used)) static inline u_long
kauth_cred_hash(const uint8_t *datap, int data_len, u_long start_key)
{
 u_long hash_key = start_key;
 u_long temp;

 while (data_len > 0) {
  hash_key = (hash_key << 4) + *datap++;
  temp = hash_key & 0xF0000000;
  if (temp) {
   hash_key ^= temp >> 24;
  }
  hash_key &= ~temp;
  data_len--;
 }
 return(hash_key);
}
