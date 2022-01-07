
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;


 int INTERFACE_FLAGS_MASK ;
 int INTERFACE_FLAGS_SHIFT ;
 int INTERFACE_INDEX_MASK ;
 int INTERFACE_INDEX_SHIFT ;

__attribute__((used)) static uint64_t
combine_interface_details(uint32_t interface_index, uint16_t interface_flags)
{
    return (((uint64_t)interface_flags & INTERFACE_FLAGS_MASK) << INTERFACE_FLAGS_SHIFT |
            ((uint64_t)interface_index & INTERFACE_INDEX_MASK) << INTERFACE_INDEX_SHIFT);
}
