
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int bzero (int*,int) ;
 int md5_compress (int*,int,int*) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;

void md5_hash(uint8_t *message, uint64_t len, uint32_t *hash) {
 hash[0] = 0x67452301;
 hash[1] = 0xEFCDAB89;
 hash[2] = 0x98BADCFE;
 hash[3] = 0x10325476;

 md5_compress(hash, len/64, message);

 uint32_t blockbuff[16];
 uint8_t *byteptr = (uint8_t*)blockbuff;

 int left = len % 64;
 memcpy(byteptr, message + len-left, left);

 byteptr[left] = 0x80;
 left++;
 if (64 - left >= 8)
  bzero(byteptr + left, 56 - left);
 else {
  memset(byteptr + left, 0, 64 - left);
  md5_compress(hash, 1, blockbuff);
  bzero(blockbuff, 56);
 }
 blockbuff[14] = (uint32_t)(len << 3);
 blockbuff[15] = (uint32_t)(len >> 29);
 md5_compress(hash, 1, blockbuff);
}
