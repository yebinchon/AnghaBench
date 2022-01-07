
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static inline uint32_t filter_index_wrap(uint32_t index, uint32_t length)
{
   return (++index < length) ? index : 0;
}
