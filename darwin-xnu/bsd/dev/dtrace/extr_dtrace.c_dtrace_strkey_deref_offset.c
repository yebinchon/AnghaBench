
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ elm ;



__attribute__((used)) static const char*
dtrace_strkey_deref_offset(void *elm, uintptr_t offs)
{
 return *((char **)((uintptr_t)(elm) + offs));
}
