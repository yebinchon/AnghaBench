
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int features ;


 int SK_FEATURE_SKYWALK ;
 int T_ASSERT_EQ (size_t,int,int *) ;
 int T_ASSERT_TRUE (int,int *) ;
 int T_EXPECT_POSIX_ZERO (int ,int *) ;
 int T_QUIET ;
 int T_WITH_ERRNO ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static uint64_t
get_skywalk_features(void)
{
 uint64_t features = 0;
 size_t len = sizeof(features);
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(sysctlbyname("kern.skywalk.features", &features, &len, ((void*)0), 0), ((void*)0));
 T_QUIET; T_ASSERT_EQ(len, sizeof(features), ((void*)0));
 T_QUIET; T_ASSERT_TRUE(features & SK_FEATURE_SKYWALK, ((void*)0));
 return features;
}
