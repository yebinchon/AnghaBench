
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int T_EXPECT_GT (int ,int ,char*) ;
 int T_QUIET ;
 int UINT64_C (int ) ;

__attribute__((used)) static void
check_fixed_counts(uint64_t counts[2][2])
{
 T_QUIET;
 T_EXPECT_GT(counts[0][0], UINT64_C(0), "instructions are larger than 0");
 T_QUIET;
 T_EXPECT_GT(counts[0][1], UINT64_C(0), "cycles are larger than 0");

 T_EXPECT_GT(counts[1][0], counts[0][0], "instructions increase monotonically");
 T_EXPECT_GT(counts[1][1], counts[0][1], "cycles increase monotonically");
}
