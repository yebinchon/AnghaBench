
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;
typedef int SHA_CTX ;
typedef int MD5_CTX ;


 int MD5_Final (scalar_t__*,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,scalar_t__*,int) ;
 int SHA1_Final (scalar_t__*,int *) ;
 int SHA1_Init (int *) ;
 int SHA1_Update (int *,scalar_t__*,int) ;
 int memset (scalar_t__*,scalar_t__,int) ;

void
sec_hash_48(uint8 * out, uint8 * in, uint8 * salt1, uint8 * salt2, uint8 salt)
{
 uint8 shasig[20];
 uint8 pad[4];
 SHA_CTX sha;
 MD5_CTX md5;
 int i;

 for (i = 0; i < 3; i++)
 {
  memset(pad, salt + i, i + 1);

  SHA1_Init(&sha);
  SHA1_Update(&sha, pad, i + 1);
  SHA1_Update(&sha, in, 48);
  SHA1_Update(&sha, salt1, 32);
  SHA1_Update(&sha, salt2, 32);
  SHA1_Final(shasig, &sha);

  MD5_Init(&md5);
  MD5_Update(&md5, in, 48);
  MD5_Update(&md5, shasig, 20);
  MD5_Final(&out[i * 16], &md5);
 }
}
