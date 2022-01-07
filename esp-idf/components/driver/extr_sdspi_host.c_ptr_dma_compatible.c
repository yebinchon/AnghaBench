
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool ptr_dma_compatible(const void* ptr)
{
    return (uintptr_t) ptr >= 0x3FFAE000 &&
           (uintptr_t) ptr < 0x40000000;
}
