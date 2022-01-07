
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static const uint16_t *uuid128_to_16(const uint8_t *uuid128)
{
    return (const uint16_t *) &uuid128[12];
}
