
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ NETPLAY_KEY_LAST ;
 scalar_t__* mapping ;
 int mapping_defined ;
 size_t netplay_key_ntoh (scalar_t__) ;

void netplay_key_hton_init(void)
{
   if (!mapping_defined)
   {
      uint16_t i;
      for (i = 0; i < NETPLAY_KEY_LAST; i++)
         mapping[netplay_key_ntoh(i)] = i;
      mapping_defined = 1;
   }
}
