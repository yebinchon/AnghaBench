
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int mov_stsc_index_valid(unsigned int index, unsigned int count)
{
    return index < count - 1;
}
