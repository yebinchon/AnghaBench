
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;


 int IFXNAMSIZ ;
 int SYSPROTO_CONTROL ;
 int T_ASSERT_POSIX_ZERO (int ,int *) ;
 int T_ASSERT_TRUE (int,char*,...) ;
 int T_QUIET ;
 int T_WITH_ERRNO ;
 int g_OPT_IFNAME ;
 int getsockopt (int,int ,int ,char*,int*) ;
 int strlen (char*) ;

__attribute__((used)) static void
tunsock_get_ifname(int s, char ifname[IFXNAMSIZ])
{
 socklen_t optlen = IFXNAMSIZ;
 T_QUIET; T_WITH_ERRNO; T_ASSERT_POSIX_ZERO(getsockopt(s, SYSPROTO_CONTROL, g_OPT_IFNAME, ifname, &optlen), ((void*)0));
 T_QUIET; T_ASSERT_TRUE(optlen > 0, ((void*)0));
 T_QUIET; T_ASSERT_TRUE(ifname[optlen-1] == '\0', ((void*)0));
 T_QUIET; T_ASSERT_TRUE(strlen(ifname)+1 == optlen, "got ifname \"%s\" len %zd expected %u", ifname, strlen(ifname), optlen);
}
