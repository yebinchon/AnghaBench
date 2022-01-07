
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static unsigned hex_char_to_number(uint8_t x)
{
    if (x >= 'a' && x <= 'f')
        x -= 'a' - 10;
    else if (x >= 'A' && x <= 'F')
        x -= 'A' - 10;
    else if (x >= '0' && x <= '9')
        x -= '0';
    else
        x = 0;
    return x;
}
