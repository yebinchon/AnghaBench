
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int * f_fstypename; } ;


 int T_ASSERT_POSIX_SUCCESS (int ,int *) ;
 int T_QUIET ;
 scalar_t__ memcmp (int *,char*,int ) ;
 int statfs (char const*,struct statfs*) ;
 int strlen (char*) ;

__attribute__((used)) static bool
path_on_apfs(const char *path)
{
 struct statfs sfs = {};
 T_QUIET; T_ASSERT_POSIX_SUCCESS(statfs(path, &sfs), ((void*)0));
 return (memcmp(&sfs.f_fstypename[0], "apfs", strlen("apfs")) == 0);
}
