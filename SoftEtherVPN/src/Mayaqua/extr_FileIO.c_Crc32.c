
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Crc32Finish (int ) ;
 int Crc32First (void*,int ,int ) ;

UINT Crc32(void *buf, UINT pos, UINT len)
{
 return Crc32Finish(Crc32First(buf, pos, len));
}
