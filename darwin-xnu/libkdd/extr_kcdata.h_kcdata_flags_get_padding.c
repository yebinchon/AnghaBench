
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int KCDATA_FLAGS_STRUCT_PADDING_MASK ;

__attribute__((used)) static inline uint32_t
kcdata_flags_get_padding(uint64_t flags)
{
 return flags & KCDATA_FLAGS_STRUCT_PADDING_MASK;
}
