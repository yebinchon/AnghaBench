
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int access_t ;


 int enabled_checks ;
 scalar_t__ kasan_enabled ;
 int kasan_is_blacklisted (int) ;

__attribute__((used)) static inline bool
kasan_check_enabled(access_t access)
{
 return kasan_enabled && (enabled_checks & access) && !kasan_is_blacklisted(access);
}
