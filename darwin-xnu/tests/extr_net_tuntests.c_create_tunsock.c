
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct sockaddr_ctl {int sc_len; scalar_t__ sc_unit; int ctl_id; int sc_id; int ss_sysaddr; int sc_family; int ctl_name; } ;
struct sockaddr {int dummy; } ;
struct ctl_info {int sc_len; scalar_t__ sc_unit; int ctl_id; int sc_id; int ss_sysaddr; int sc_family; int ctl_name; } ;
typedef int socklen_t ;
typedef int kernctl_info ;
typedef int kernctl_addr ;
typedef int enable_netif ;
typedef int enable_flowswitch ;
typedef int enable_channel ;


 int AF_SYSTEM ;
 int AF_SYS_CONTROL ;
 int CTLIOCGINFO ;
 scalar_t__ EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int ENOTSUP ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int PF_SYSTEM ;
 int SK_FEATURE_NETNS ;
 int SOCK_DGRAM ;
 int SYSPROTO_CONTROL ;
 int T_EXPECT_EQ_ULONG (unsigned long,int,int *) ;
 int T_EXPECT_FALSE (int ,int *) ;
 int T_EXPECT_POSIX_FAILURE (int,int ,int *) ;
 int T_EXPECT_POSIX_SUCCESS (int,int *) ;
 int T_EXPECT_POSIX_ZERO (int,char*) ;
 int T_EXPECT_TRUE (int ,int *) ;
 int T_LOG (char*) ;
 int T_QUIET ;
 int T_WITH_ERRNO ;
 int bind (int,struct sockaddr*,int) ;
 int check_enables (int,int,int,int,int ) ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 scalar_t__ errno ;
 int g_CONTROL_NAME ;
 int g_OPT_ENABLE_CHANNEL ;
 int g_OPT_ENABLE_FLOWSWITCH ;
 int g_OPT_ENABLE_NETIF ;
 int g_OPT_GET_CHANNEL_UUID ;
 scalar_t__ g_is_ipsec_test ;
 int get_skywalk_features () ;
 int getsockopt (int,int ,int ,int ,int*) ;
 int ioctl (int,int ,struct sockaddr_ctl*) ;
 int memset (struct sockaddr_ctl*,int ,int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,int ,int) ;
 int uuid_clear (int ) ;
 int uuid_is_null (int ) ;

__attribute__((used)) static int
create_tunsock(int enable_netif, int enable_flowswitch, int enable_channel)
{
 int tunsock;
 struct ctl_info kernctl_info;
 struct sockaddr_ctl kernctl_addr;
 uuid_t uuid;
 socklen_t uuidlen;

startover:

 T_QUIET; T_EXPECT_POSIX_SUCCESS(tunsock = socket(PF_SYSTEM, SOCK_DGRAM, SYSPROTO_CONTROL), ((void*)0));

 memset(&kernctl_info, 0, sizeof(kernctl_info));
 strlcpy(kernctl_info.ctl_name, g_CONTROL_NAME, sizeof(kernctl_info.ctl_name));
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(ioctl(tunsock, CTLIOCGINFO, &kernctl_info), ((void*)0));

 memset(&kernctl_addr, 0, sizeof(kernctl_addr));
 kernctl_addr.sc_len = sizeof(kernctl_addr);
 kernctl_addr.sc_family = AF_SYSTEM;
 kernctl_addr.ss_sysaddr = AF_SYS_CONTROL;
 kernctl_addr.sc_id = kernctl_info.ctl_id;
 kernctl_addr.sc_unit = 0;




 T_QUIET; T_EXPECT_POSIX_FAILURE(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_NETIF,
   &enable_netif, sizeof(enable_netif)), EINVAL, ((void*)0));
 T_QUIET; T_EXPECT_POSIX_FAILURE(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_FLOWSWITCH,
   &enable_flowswitch, sizeof(enable_flowswitch)), EINVAL, ((void*)0));
 T_QUIET; T_EXPECT_POSIX_FAILURE(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_CHANNEL,
   &enable_channel, sizeof(enable_channel)), EINVAL, ((void*)0));
 uuid_clear(uuid);
 uuidlen = sizeof(uuid_t);
 T_QUIET; T_EXPECT_POSIX_FAILURE(getsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
   uuid, &uuidlen), EINVAL, ((void*)0));
 T_QUIET; T_EXPECT_EQ_ULONG((unsigned long )uuidlen, sizeof(uuid_t), ((void*)0));
 T_QUIET; T_EXPECT_TRUE(uuid_is_null(uuid), ((void*)0));

 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(bind(tunsock, (struct sockaddr *)&kernctl_addr, sizeof(kernctl_addr)), ((void*)0));

 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_NETIF,
    &enable_netif, sizeof(enable_netif)), ((void*)0));
 T_QUIET; T_EXPECT_POSIX_FAILURE(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_FLOWSWITCH,
   &enable_flowswitch, sizeof(enable_flowswitch)), EINVAL, ((void*)0));
 T_QUIET; T_EXPECT_POSIX_FAILURE(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_CHANNEL,
   &enable_channel, sizeof(enable_channel)), EINVAL, ((void*)0));
 uuid_clear(uuid);
 uuidlen = sizeof(uuid_t);
 T_QUIET; T_EXPECT_POSIX_FAILURE(getsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
   uuid, &uuidlen), ENXIO, ((void*)0));
 T_QUIET; T_EXPECT_EQ_ULONG((unsigned long )uuidlen, sizeof(uuid_t), ((void*)0));
 T_QUIET; T_EXPECT_TRUE(uuid_is_null(uuid), ((void*)0));

 int error = connect(tunsock, (struct sockaddr *)&kernctl_addr, sizeof(kernctl_addr));
 if (error == -1 && errno == EBUSY) {



  close(tunsock);
  T_LOG("connect got EBUSY, sleeping 1 second before retry");
  sleep(1);
  goto startover;
 }
 T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(error, "connect()");

 T_QUIET; T_EXPECT_POSIX_FAILURE(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_NETIF,
   &enable_netif, sizeof(enable_netif)), EINVAL, ((void*)0));

 if (get_skywalk_features() & SK_FEATURE_NETNS) {
  if (enable_netif) {
   T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_FLOWSWITCH,
     &enable_flowswitch, sizeof(enable_flowswitch)), ((void*)0));
  } else {
   T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_FAILURE(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_FLOWSWITCH,
     &enable_flowswitch, sizeof(enable_flowswitch)), ENOENT, ((void*)0));
  }
 } else {
  T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_FAILURE(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_FLOWSWITCH,
    &enable_flowswitch, sizeof(enable_flowswitch)), ENOTSUP, ((void*)0));
 }

 if (enable_channel) {
  if (g_is_ipsec_test && !enable_netif) {

   T_QUIET; T_EXPECT_POSIX_FAILURE(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_CHANNEL,
     &enable_channel, sizeof(enable_channel)), EOPNOTSUPP, ((void*)0));
   uuid_clear(uuid);
   uuidlen = sizeof(uuid_t);
   T_QUIET; T_EXPECT_POSIX_FAILURE(getsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
     uuid, &uuidlen), ENXIO, ((void*)0));
   T_QUIET; T_EXPECT_EQ_ULONG((unsigned long )uuidlen, sizeof(uuid_t), ((void*)0));
   T_QUIET; T_EXPECT_TRUE(uuid_is_null(uuid), ((void*)0));
  } else {
   T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_CHANNEL,
     &enable_channel, sizeof(enable_channel)), ((void*)0));
   uuid_clear(uuid);
   uuidlen = sizeof(uuid_t);
   T_QUIET; T_WITH_ERRNO; T_EXPECT_POSIX_ZERO(getsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
     uuid, &uuidlen), ((void*)0));
   T_QUIET; T_EXPECT_EQ_ULONG((unsigned long )uuidlen, sizeof(uuid_t), ((void*)0));
   T_QUIET; T_EXPECT_FALSE(uuid_is_null(uuid), ((void*)0));
  }
 } else {
  T_QUIET; T_EXPECT_POSIX_FAILURE(setsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_CHANNEL,
    &enable_channel, sizeof(enable_channel)), ENXIO, ((void*)0));
  uuid_clear(uuid);
  uuidlen = sizeof(uuid_t);
  T_QUIET; T_EXPECT_POSIX_FAILURE(getsockopt(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
    uuid, &uuidlen), ENXIO, ((void*)0));
  T_QUIET; T_EXPECT_EQ_ULONG((unsigned long )uuidlen, sizeof(uuid_t), ((void*)0));
  T_QUIET; T_EXPECT_TRUE(uuid_is_null(uuid), ((void*)0));
 }

 check_enables(tunsock, enable_netif, enable_flowswitch, enable_channel, uuid);



 return tunsock;
}
