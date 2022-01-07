
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;


 int* crc32_table ;

UINT Crc32Next(void *buf, UINT pos, UINT len, UINT last_crc32)
{
 UINT ret = last_crc32;
 UINT i;

 for (i = 0;i < len;i++)
 {
  ret = (ret >> 8) ^ crc32_table[((UCHAR *)buf)[pos + i] ^ (ret & 0xff)];
 }

 return ret;
}
