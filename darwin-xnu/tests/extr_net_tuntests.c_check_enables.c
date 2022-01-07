
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* uuid_t ;
typedef int socklen_t ;
typedef int scratch ;


 int ENXIO ;
 int SK_FEATURE_NETNS ;
 int SYSPROTO_CONTROL ;
 int T_EXPECT_EQ (int,int,int *) ;
 int T_EXPECT_EQ_ULONG (unsigned long,int,int *) ;
 int T_EXPECT_FALSE (int ,int *) ;
 int T_EXPECT_POSIX_FAILURE (int ,int ,int *) ;
 int T_EXPECT_POSIX_ZERO (int ,int *) ;
 int T_EXPECT_TRUE (int ,int *) ;
 int T_QUIET ;
 int T_WITH_ERRNO ;
 int g_OPT_ENABLE_CHANNEL ;
 int g_OPT_ENABLE_FLOWSWITCH ;
 int g_OPT_ENABLE_NETIF ;
 int g_OPT_GET_CHANNEL_UUID ;
 scalar_t__ g_is_ipsec_test ;
 int get_skywalk_features () ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int uuid_clear (int*) ;
 int uuid_is_null (int*) ;

__attribute__((used)) static void
check_enables(int tunsock, int enable_netif, int enable_flowswitch, int enable_channel, uuid_t uuid)
{
 int scratch;
 socklen_t scratchlen, uuidlen;
 uuid_t scratchuuid;
 if (!uuid) {
  uuid = scratchuuid;
 }



 scratchlen = sizeof(scratch);
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(getsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_NETIF,
   &scratch, &scratchlen), ((void*)0));
 T_QUIET; T_EXPECT_EQ_ULONG((unsigned long )scratchlen, sizeof(scratch), ((void*)0));
 T_QUIET; T_EXPECT_EQ(scratch, enable_netif, ((void*)0));

 scratchlen = sizeof(scratch);
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(getsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_FLOWSWITCH,
   &scratch, &scratchlen), ((void*)0));
 T_QUIET; T_EXPECT_EQ_ULONG((unsigned long )scratchlen, sizeof(scratch), ((void*)0));
 if (get_skywalk_features() & SK_FEATURE_NETNS) {
  if (enable_netif) {
   T_QUIET; T_EXPECT_EQ(scratch, enable_flowswitch, ((void*)0));
  } else {
   T_QUIET; T_EXPECT_EQ(scratch, 0, ((void*)0));
  }
 } else {
  T_QUIET; T_EXPECT_EQ(scratch, 0, ((void*)0));
 }

 scratchlen = sizeof(scratch);
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(getsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_CHANNEL,
   &scratch, &scratchlen), ((void*)0));
 T_QUIET; T_EXPECT_EQ_ULONG((unsigned long )scratchlen, sizeof(scratch), ((void*)0));
 if (g_is_ipsec_test && !enable_netif) {
  T_QUIET; T_EXPECT_EQ(scratch, 0, ((void*)0));
 } else {
  T_QUIET; T_EXPECT_EQ(scratch, enable_channel, ((void*)0));
 }

 if (scratch) {
  uuid_clear(uuid);
  uuidlen = sizeof(uuid_t);
  T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(getsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
    uuid, &uuidlen), ((void*)0));
  T_QUIET; T_EXPECT_EQ_ULONG((unsigned long )uuidlen, sizeof(uuid_t), ((void*)0));
  T_QUIET; T_EXPECT_FALSE(uuid_is_null(uuid), ((void*)0));
 } else {
  uuid_clear(uuid);
  uuidlen = sizeof(uuid_t);
  T_QUIET; T_EXPECT_POSIX_FAILURE(getsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
    uuid, &uuidlen), ENXIO, ((void*)0));
  T_QUIET; T_EXPECT_EQ_ULONG((unsigned long )uuidlen, sizeof(uuid_t), ((void*)0));
  T_QUIET; T_EXPECT_TRUE(uuid_is_null(uuid), ((void*)0));
 }
}
