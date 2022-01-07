
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memset (void*,int ,unsigned int) ;

void _set(void *to, uint8_t val, unsigned int len)
{
    (void)memset(to, val, len);
}
