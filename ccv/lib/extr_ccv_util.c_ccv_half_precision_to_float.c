
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;


 scalar_t__* _ccv_exponent_table ;
 scalar_t__* _ccv_mantissa_table ;
 int* _ccv_offset_table ;

void ccv_half_precision_to_float(uint16_t* h, float* f, size_t len)
{
 int i;
 uint32_t* u = (uint32_t*)f;
 for (i = 0; i < len; i++)
  u[i] = _ccv_mantissa_table[_ccv_offset_table[h[i] >> 10] + (h[i] & 0x3ff)] + _ccv_exponent_table[h[i] >> 10];
}
