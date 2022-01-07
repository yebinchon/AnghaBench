
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int
fasttrap_uint32_cmp(const void *ap, const void *bp)
{
 return (*(const uint32_t *)ap - *(const uint32_t *)bp);
}
