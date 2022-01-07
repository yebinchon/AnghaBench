
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16_t ;



__attribute__((used)) static inline int property_id_compare(const void *p1, const void *p2)
{
    if (*(u16_t *)p1 < * (u16_t *)p2) {
        return -1;
    }
    if (*(u16_t *)p1 > *(u16_t *)p2) {
        return 1;
    }
    return 0;
}
