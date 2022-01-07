
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_FDCWD ;
 int renameatx_np (int ,char const*,int ,char const*,unsigned int) ;

int
renamex_np(const char *old, const char *new, unsigned int flags)
{
 return renameatx_np(AT_FDCWD, old, AT_FDCWD, new, flags);
}
