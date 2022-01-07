
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ccdes_key_set_odd_parity (int*,int) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static void
des_make_key(const uint8_t rawkey[7], uint8_t deskey[8])
{
 uint8_t val = 0;

 memcpy(deskey, rawkey, 7);
 for (int i = 0; i < 7; i++)
  val |= ((deskey[i] & 1) << (i+1));
 deskey[7] = val;
 ccdes_key_set_odd_parity(deskey, 8);
}
