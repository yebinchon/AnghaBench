
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int T_EXPECT_POSIX_FAILURE (int ,int ,int *) ;
 int T_EXPECT_POSIX_ZERO (int ,int *) ;
 int T_QUIET ;
 int T_WITH_ERRNO ;
 int close (int ) ;
 scalar_t__ g_is_ipsec_test ;
 int g_pfkeyso ;
 int g_tunsock ;

__attribute__((used)) static void
cleanup_tunsock(void)
{
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(close(g_tunsock), ((void*)0));
 T_QUIET; T_EXPECT_POSIX_FAILURE(close(g_tunsock), EBADF, ((void*)0));
 if (g_is_ipsec_test) {
  T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(close(g_pfkeyso), ((void*)0));
  T_QUIET; T_EXPECT_POSIX_FAILURE(close(g_pfkeyso), EBADF, ((void*)0));
 }
}
