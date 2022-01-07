
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long pktsched_bitmap_t ;



__attribute__((used)) static inline pktsched_bitmap_t
mask_from(pktsched_bitmap_t bitmap, int from)
{
 return (bitmap & ~((1UL << from) - 1));
}
