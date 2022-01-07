
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int GETU32 (int const*) ;
 int RCON (int) ;
 int TE411 (int) ;
 int TE414 (int) ;
 int TE421 (int) ;
 int TE422 (int) ;
 int TE432 (int) ;
 int TE433 (int) ;
 int TE443 (int) ;
 int TE444 (int) ;

int rijndaelKeySetupEnc(u32 rk[], const u8 cipherKey[], int keyBits)
{
 int i;
 u32 temp;

 rk[0] = GETU32(cipherKey );
 rk[1] = GETU32(cipherKey + 4);
 rk[2] = GETU32(cipherKey + 8);
 rk[3] = GETU32(cipherKey + 12);

 if (keyBits == 128) {
  for (i = 0; i < 10; i++) {
   temp = rk[3];
   rk[4] = rk[0] ^ TE421(temp) ^ TE432(temp) ^
    TE443(temp) ^ TE414(temp) ^ RCON(i);
   rk[5] = rk[1] ^ rk[4];
   rk[6] = rk[2] ^ rk[5];
   rk[7] = rk[3] ^ rk[6];
   rk += 4;
  }
  return 10;
 }

 rk[4] = GETU32(cipherKey + 16);
 rk[5] = GETU32(cipherKey + 20);

 if (keyBits == 192) {
  for (i = 0; i < 8; i++) {
   temp = rk[5];
   rk[6] = rk[0] ^ TE421(temp) ^ TE432(temp) ^
    TE443(temp) ^ TE414(temp) ^ RCON(i);
   rk[7] = rk[1] ^ rk[6];
   rk[8] = rk[2] ^ rk[7];
   rk[9] = rk[3] ^ rk[8];
   if (i == 7)
    return 12;
   rk[10] = rk[4] ^ rk[9];
   rk[11] = rk[5] ^ rk[10];
   rk += 6;
  }
 }

 rk[6] = GETU32(cipherKey + 24);
 rk[7] = GETU32(cipherKey + 28);

 if (keyBits == 256) {
  for (i = 0; i < 7; i++) {
   temp = rk[7];
   rk[8] = rk[0] ^ TE421(temp) ^ TE432(temp) ^
    TE443(temp) ^ TE414(temp) ^ RCON(i);
   rk[9] = rk[1] ^ rk[8];
   rk[10] = rk[2] ^ rk[9];
   rk[11] = rk[3] ^ rk[10];
   if (i == 6)
    return 14;
   temp = rk[11];
   rk[12] = rk[4] ^ TE411(temp) ^ TE422(temp) ^
    TE433(temp) ^ TE444(temp);
   rk[13] = rk[5] ^ rk[12];
   rk[14] = rk[6] ^ rk[13];
   rk[15] = rk[7] ^ rk[14];
   rk += 8;
  }
 }

 return -1;
}
