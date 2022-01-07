
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int UPDC32 (unsigned char,int ) ;

uint32_t updateCRC32(unsigned char ch, uint32_t crc)
{
      return UPDC32(ch, crc);
}
