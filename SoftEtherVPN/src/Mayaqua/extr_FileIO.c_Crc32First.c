
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Crc32Next (void*,int ,int ,int) ;

UINT Crc32First(void *buf, UINT pos, UINT len)
{
 return Crc32Next(buf, pos, len, 0xffffffff);
}
