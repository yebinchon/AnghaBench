
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s64 ;
typedef int Result ;


 scalar_t__ GET_VERSION_MAJOR (scalar_t__) ;
 scalar_t__ GET_VERSION_MINOR (scalar_t__) ;
 scalar_t__ R_FAILED (int ) ;
 int svcGetSystemInfo (scalar_t__*,int,int ) ;

Result get_luma_version(u32 *major, u32 *minor) {
  s64 out;
  u32 version;

  if (R_FAILED(svcGetSystemInfo(&out, 0x10000, 0)))
    return -1;

  version = (u32)out;
  *major = GET_VERSION_MAJOR(version);
  *minor = GET_VERSION_MINOR(version);
  return 0;
}
