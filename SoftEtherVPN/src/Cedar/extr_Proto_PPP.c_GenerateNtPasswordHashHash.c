
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int HashMd4 (int *,int *,int) ;

void GenerateNtPasswordHashHash(UCHAR *dst_hash, UCHAR *src_hash)
{

 if (dst_hash == ((void*)0) || src_hash == ((void*)0))
 {
  return;
 }

 HashMd4(dst_hash, src_hash, 16);
}
