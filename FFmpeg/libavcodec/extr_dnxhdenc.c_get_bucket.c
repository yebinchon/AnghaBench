
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NBUCKETS ;

__attribute__((used)) static inline int get_bucket(int value, int shift)
{
    value >>= shift;
    value &= NBUCKETS - 1;
    return NBUCKETS - 1 - value;
}
