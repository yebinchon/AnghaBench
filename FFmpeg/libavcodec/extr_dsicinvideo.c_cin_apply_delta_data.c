
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void cin_apply_delta_data(const unsigned char *src, unsigned char *dst,
                                 int size)
{
    while (size--)
        *dst++ += *src++;
}
