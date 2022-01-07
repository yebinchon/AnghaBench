
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int PAGE_SIZE ;

uint32_t
hibernate_sum_page(uint8_t *buf, uint32_t ppnum)
{
    return (((uint32_t *)buf)[((PAGE_SIZE >> 2) - 1) & ppnum]);
}
