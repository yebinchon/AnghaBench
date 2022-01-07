
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void put_v(uint8_t *p, unsigned v)
{
    if (v>>28)
        *p++ = ((v>>28)&0x7f)|0x80;
    if (v>>21)
        *p++ = ((v>>21)&0x7f)|0x80;
    if (v>>14)
        *p++ = ((v>>14)&0x7f)|0x80;
    if (v>>7)
        *p++ = ((v>>7)&0x7f)|0x80;
}
