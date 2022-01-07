
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct coalition_resource_usage {int dummy; } ;


 int COALITION_INFO_RESOURCE_USAGE ;
 int __coalition_info (int ,int *,struct coalition_resource_usage*,size_t*) ;

int coalition_info_resource_usage(uint64_t cid, struct coalition_resource_usage *cru, size_t sz)
{
 return __coalition_info(COALITION_INFO_RESOURCE_USAGE, &cid, cru, &sz);
}
