
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 char* cpuid_get_names (int ,int ,char*,unsigned int) ;
 int leaf7_feature_map ;

char *
cpuid_get_leaf7_feature_names(uint64_t features, char *buf, unsigned buf_len)
{
 return cpuid_get_names(leaf7_feature_map, features, buf, buf_len);
}
