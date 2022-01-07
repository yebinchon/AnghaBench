
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int size ;



__attribute__((used)) static unsigned int size_to_syncsafe(unsigned int size)
{
    return (((size) & (0x7f << 0)) >> 0) +
           (((size) & (0x7f << 8)) >> 1) +
           (((size) & (0x7f << 16)) >> 2) +
           (((size) & (0x7f << 24)) >> 3);
}
