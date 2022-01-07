
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int signed_shift(int i, int shift) {
    if (shift > 0)
        return (unsigned)i << shift;
    return i >> -shift;
}
