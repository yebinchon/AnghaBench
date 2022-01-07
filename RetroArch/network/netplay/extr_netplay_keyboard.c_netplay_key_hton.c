
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int NETPLAY_KEY_UNKNOWN ;
 unsigned int RETROK_LAST ;
 int * mapping ;

uint32_t netplay_key_hton(unsigned key)
{
   if (key >= RETROK_LAST)
      return NETPLAY_KEY_UNKNOWN;
   return mapping[key];
}
