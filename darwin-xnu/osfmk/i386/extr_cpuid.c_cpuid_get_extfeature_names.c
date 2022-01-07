
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 char* cpuid_get_names (int ,int ,char*,unsigned int) ;
 int extfeature_map ;

char *
cpuid_get_extfeature_names(uint64_t extfeatures, char *buf, unsigned buf_len)
{
 return cpuid_get_names(extfeature_map, extfeatures, buf, buf_len);
}
