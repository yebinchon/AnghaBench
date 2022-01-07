
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ GRAPHICS_RESOURCE_WIDTH ;

__attribute__((used)) static inline uint16_t auto_size(uint16_t arg, uint16_t actual_size)
{
   return arg == GRAPHICS_RESOURCE_WIDTH ? actual_size : arg;
}
