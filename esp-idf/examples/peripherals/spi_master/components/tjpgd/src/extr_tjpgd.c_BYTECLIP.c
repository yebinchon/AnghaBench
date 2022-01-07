
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;



inline uint8_t BYTECLIP (
 int16_t val
)
{
 if (val < 0) val = 0;
 if (val > 255) val = 255;

 return (uint8_t)val;
}
