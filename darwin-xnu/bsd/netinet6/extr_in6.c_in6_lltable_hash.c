
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int addr6; } ;
struct llentry {TYPE_1__ r_l3addr; } ;


 int in6_lltable_hash_dst (int *,int ) ;

__attribute__((used)) static uint32_t
in6_lltable_hash(const struct llentry *lle, uint32_t hsize)
{
 return (in6_lltable_hash_dst(&lle->r_l3addr.addr6, hsize));
}
