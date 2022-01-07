
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;



UINT Crc32Finish(UINT last_crc32)
{
 return ~last_crc32;
}
