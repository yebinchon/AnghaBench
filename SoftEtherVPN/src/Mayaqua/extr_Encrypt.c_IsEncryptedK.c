
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int K ;
typedef int BUF ;


 int * BufToK (int *,int,int,int *) ;
 int FreeK (int *) ;
 int IsBase64 (int *) ;

bool IsEncryptedK(BUF *b, bool private_key)
{
 K *k;

 if (b == ((void*)0))
 {
  return 0;
 }
 if (IsBase64(b) == 0)
 {
  return 0;
 }

 k = BufToK(b, private_key, 1, ((void*)0));
 if (k != ((void*)0))
 {
  FreeK(k);
  return 0;
 }

 return 1;
}
