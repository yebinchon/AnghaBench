
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int on ;


 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int T_ASSERT_POSIX_SUCCESS (int,char*,int) ;
 int T_QUIET ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static void
sockv6_set_v6only(int s)
{
 int on = 1;
 int ret;

 ret = setsockopt(s, IPPROTO_IPV6, IPV6_V6ONLY, &on, sizeof(on));
 T_QUIET;
 T_ASSERT_POSIX_SUCCESS(ret, "setsockopt(%d, IPV6_ONLY)", s);
}
