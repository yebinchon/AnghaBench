
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static int
fasttrap_uint64_cmp(const void *ap, const void *bp)
{
 return (*(const uint64_t *)ap - *(const uint64_t *)bp);
}
