
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct in_addr {int s_addr; } ;


 int IN_LLTBL_HASH (int ,int ) ;

__attribute__((used)) static inline uint32_t
in_lltable_hash_dst(const struct in_addr dst, uint32_t hsize)
{
 return (IN_LLTBL_HASH(dst.s_addr, hsize));
}
