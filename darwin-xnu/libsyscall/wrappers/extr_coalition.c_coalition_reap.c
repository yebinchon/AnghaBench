
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int COALITION_OP_REAP ;
 int __coalition (int ,int *,int ) ;

int coalition_reap(uint64_t cid, uint32_t flags)
{
 return __coalition(COALITION_OP_REAP, &cid, flags);
}
