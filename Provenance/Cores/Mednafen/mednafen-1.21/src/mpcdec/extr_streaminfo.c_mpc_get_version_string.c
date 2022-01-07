
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* na ;
 char const** versionNames ;

__attribute__((used)) static const char *
mpc_get_version_string(float profile)
{
 return profile >= sizeof versionNames / sizeof *versionNames ? na : versionNames[(int)profile];
}
