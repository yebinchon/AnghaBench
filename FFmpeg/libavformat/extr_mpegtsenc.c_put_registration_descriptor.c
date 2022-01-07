
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void put_registration_descriptor(uint8_t **q_ptr, uint32_t tag)
{
    uint8_t *q = *q_ptr;
    *q++ = 0x05;
    *q++ = 4;
    *q++ = tag;
    *q++ = tag >> 8;
    *q++ = tag >> 16;
    *q++ = tag >> 24;
    *q_ptr = q;
}
