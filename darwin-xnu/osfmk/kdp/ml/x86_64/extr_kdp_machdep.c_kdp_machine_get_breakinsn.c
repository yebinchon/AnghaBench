
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



void
kdp_machine_get_breakinsn(
        uint8_t *bytes,
        uint32_t *size
)
{
 bytes[0] = 0xcc;
 *size = 1;
}
