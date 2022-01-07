
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ crc_table ;

const uint32_t *get_crc_table(void)
   {
      return (const uint32_t*)crc_table;
   }
