
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
symmetric_dequant(int code, int levels)
{
    return ((code - (levels >> 1)) * (1 << 24)) / levels;
}
