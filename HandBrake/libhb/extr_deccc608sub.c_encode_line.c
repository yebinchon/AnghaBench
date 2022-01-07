
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned encode_line(unsigned char *buffer, unsigned char *text)
{
    unsigned bytes = 0;
    while (*text)
    {
        *buffer++ = *text++;
        bytes++;
    }
    return bytes;
}
