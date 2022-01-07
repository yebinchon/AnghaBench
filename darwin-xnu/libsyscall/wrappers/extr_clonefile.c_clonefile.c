
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AT_FDCWD ;
 int clonefileat (int ,char const*,int ,char const*,int ) ;

int
clonefile(const char *old, const char *new, uint32_t flags)
{
 return (clonefileat(AT_FDCWD, old, AT_FDCWD, new, flags));
}
