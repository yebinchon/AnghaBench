
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sign_data ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;


 int Copy (int*,int*,int) ;
 int HASHED_DATA (int*) ;
 scalar_t__ MIN_SIGN_HASH_SIZE ;
 int Sha1 (int ,void*,scalar_t__) ;

bool HashForSign(void *dst, UINT dst_size, void *src, UINT src_size)
{
 UCHAR *buf = (UCHAR *)dst;
 UCHAR sign_data[] =
 {
  0x30, 0x21, 0x30, 0x09, 0x06, 0x05, 0x2B, 0x0E,
  0x03, 0x02, 0x1A, 0x05, 0x00, 0x04, 0x14,
 };

 if (dst == ((void*)0) || src == ((void*)0) || src_size == 0 || MIN_SIGN_HASH_SIZE > dst_size)
 {
  return 0;
 }


 Copy(buf, sign_data, sizeof(sign_data));


 Sha1(HASHED_DATA(buf), src, src_size);

 return 1;
}
