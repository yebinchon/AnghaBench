
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int COALITION_OP_CREATE ;
 int __coalition (int ,int *,int ) ;

int coalition_create(uint64_t *cid_out, uint32_t flags)
{
 return __coalition(COALITION_OP_CREATE, cid_out, flags);
}
