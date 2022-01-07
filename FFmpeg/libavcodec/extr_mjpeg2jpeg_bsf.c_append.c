
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,int const*,int) ;

__attribute__((used)) static uint8_t *append(uint8_t *buf, const uint8_t *src, int size)
{
    memcpy(buf, src, size);
    return buf + size;
}
