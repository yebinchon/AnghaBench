
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int renamex_np (char const*,char const*,unsigned int) ;

int
rename_ext(const char *old, const char *new, unsigned int flags)
{
 return renamex_np(old, new, flags);
}
