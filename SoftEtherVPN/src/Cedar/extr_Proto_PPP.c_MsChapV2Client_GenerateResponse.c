
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int password_hash_2 ;
typedef int key3 ;
typedef int key2 ;
typedef int key1 ;
typedef int UCHAR ;


 int Copy (int *,int *,int) ;
 int DesEcbEncrypt (int *,int *,int *) ;
 int Zero (int *,int) ;

void MsChapV2Client_GenerateResponse(UCHAR *dst, UCHAR *challenge8, UCHAR *nt_password_hash)
{
 UCHAR password_hash_2[21];
 UCHAR key1[8], key2[8], key3[8];

 if (dst == ((void*)0) || challenge8 == ((void*)0) || nt_password_hash == ((void*)0))
 {
  return;
 }

 Zero(password_hash_2, sizeof(password_hash_2));
 Copy(password_hash_2, nt_password_hash, 16);

 Zero(key1, sizeof(key1));
 Zero(key2, sizeof(key2));
 Zero(key3, sizeof(key3));

 Copy(key1, password_hash_2 + 0, 7);
 Copy(key2, password_hash_2 + 7, 7);
 Copy(key3, password_hash_2 + 14, 7);

 DesEcbEncrypt(dst + 0, challenge8, key1);
 DesEcbEncrypt(dst + 8, challenge8, key2);
 DesEcbEncrypt(dst + 16, challenge8, key3);
}
