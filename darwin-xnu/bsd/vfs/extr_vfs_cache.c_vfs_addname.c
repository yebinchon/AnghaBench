
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;


 int FALSE ;
 char const* add_name_internal (char const*,int ,int ,int ,int ) ;

const char *
vfs_addname(const char *name, uint32_t len, u_int hashval, u_int flags)
{
 return (add_name_internal(name, len, hashval, FALSE, flags));
}
