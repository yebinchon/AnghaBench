
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int flags ;


 int COALITION_INFO_SET_EFFICIENCY ;
 int __coalition_info (int ,int *,void*,size_t*) ;

int coalition_info_set_efficiency(uint64_t cid, uint64_t flags)
{
    size_t size = sizeof(flags);
    return __coalition_info(COALITION_INFO_SET_EFFICIENCY, &cid, (void *)&flags, &size);
}
