
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void store_int(void *dest, int size, unsigned long long i)
{
    if (!dest) return;
    switch (size) {
    case 130:
        *(char *)dest = i;
        break;
    case 131:
        *(short *)dest = i;
        break;
    case 132:
        *(int *)dest = i;
        break;
    case 129:
        *(long *)dest = i;
        break;
    case 128:
        *(long long *)dest = i;
        break;
    }
}
