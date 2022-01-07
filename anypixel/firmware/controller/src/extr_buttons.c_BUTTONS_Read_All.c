
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ int8_t ;


 scalar_t__ BUTTONS_NUM ;
 int BUTTONS_Read (scalar_t__) ;

uint32_t BUTTONS_Read_All(void) {
 int8_t i;
 uint32_t result = 0;
 for(i = BUTTONS_NUM-1; i >= 0; i--)
  result = (result << 1) | BUTTONS_Read(i);
 return result;
}
