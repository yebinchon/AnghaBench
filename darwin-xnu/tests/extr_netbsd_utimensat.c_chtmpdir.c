
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int * f_fstypename; int member_0; } ;


 int DIRPATH ;
 int FILEPATH ;
 int LINK ;
 int T_ASSERT_POSIX_SUCCESS (int ,int *) ;
 int T_ASSERT_POSIX_ZERO (int ,int *) ;
 int T_QUIET ;
 int T_SETUPBEGIN ;
 int T_SETUPEND ;
 int T_SKIP (char*) ;
 int chdir (int ) ;
 int dt_tmpdir () ;
 scalar_t__ memcmp (int *,char*,int ) ;
 int rmdir (int ) ;
 int statfs (char*,struct statfs*) ;
 int strlen (char*) ;
 int unlink (int ) ;

__attribute__((used)) static void chtmpdir(void)
{
 T_SETUPBEGIN;
 T_ASSERT_POSIX_ZERO(chdir(dt_tmpdir()), ((void*)0));


 unlink(FILEPATH);
 unlink(LINK);
 rmdir(DIRPATH);


 struct statfs sfs = { 0 };
 T_QUIET; T_ASSERT_POSIX_SUCCESS(statfs(".", &sfs), ((void*)0));
 if (memcmp(&sfs.f_fstypename[0], "apfs", strlen("apfs")) != 0) {
  T_SKIP("utimensat is APFS-only, but working directory is non-APFS");
 }

 T_SETUPEND;
}
