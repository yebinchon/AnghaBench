
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned cdrom_msf_to_lba(unsigned char min, unsigned char sec, unsigned char frame)
{
   return (min * 60 + sec) * 75 + frame;
}
