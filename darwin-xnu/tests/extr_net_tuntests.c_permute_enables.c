
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_EXPECT_GE (int,int ,int *) ;
 int T_EXPECT_POSIX_ZERO (int ,int *) ;
 int T_QUIET ;
 int T_WITH_ERRNO ;
 int close (int) ;
 int create_tunsock (int,int,int) ;

__attribute__((used)) static void
permute_enables(void)
{
 int tunsock;
 T_EXPECT_GE(tunsock = create_tunsock(0, 0, 0), 0, ((void*)0));
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(close(tunsock), ((void*)0));
 T_EXPECT_GE(tunsock = create_tunsock(0, 0, 1), 0, ((void*)0));
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(close(tunsock), ((void*)0));
 T_EXPECT_GE(tunsock = create_tunsock(0, 1, 0), 0, ((void*)0));
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(close(tunsock), ((void*)0));
 T_EXPECT_GE(tunsock = create_tunsock(0, 1, 1), 0, ((void*)0));
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(close(tunsock), ((void*)0));
 T_EXPECT_GE(tunsock = create_tunsock(1, 0, 0), 0, ((void*)0));
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(close(tunsock), ((void*)0));
 T_EXPECT_GE(tunsock = create_tunsock(1, 0, 1), 0, ((void*)0));
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(close(tunsock), ((void*)0));
 T_EXPECT_GE(tunsock = create_tunsock(1, 1, 0), 0, ((void*)0));
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(close(tunsock), ((void*)0));
 T_EXPECT_GE(tunsock = create_tunsock(1, 1, 1), 0, ((void*)0));
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(close(tunsock), ((void*)0));
}
