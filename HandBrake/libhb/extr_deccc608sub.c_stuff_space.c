
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned stuff_space(unsigned char *buffer, int space)
{
    int ii;
    for (ii = 0; ii < space; ii++)
    {
        *buffer++ = '\\';
        *buffer++ = 'h';
    }
    return space * 2;
}
