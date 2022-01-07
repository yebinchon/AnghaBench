
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static int cmp(const uint64_t *a, const uint64_t *b)
{
    return *a < *b ? -1 : ( *a > *b ? 1 : 0 );
}
