
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_EXPECT_EQ (int,int,char*,char const*,int) ;
 int T_WITH_ERRNO ;

__attribute__((used)) static void
expect_special_port_id(int (*fn)(const char *id), int port, const char *portid)
{
 int observed_port = fn(portid);
 T_WITH_ERRNO;
 T_EXPECT_EQ(observed_port, port, "%s is %d", portid, observed_port);
}
