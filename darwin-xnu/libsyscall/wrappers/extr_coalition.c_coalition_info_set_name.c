
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int COALITION_INFO_SET_NAME ;
 int __coalition_info (int ,int *,void*,size_t*) ;

int coalition_info_set_name(uint64_t cid, const char *name, size_t size)
{
 return __coalition_info(COALITION_INFO_SET_NAME, &cid, (void *)name, &size);
}
