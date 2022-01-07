
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;


 int T_EXPECT_GT (int ,int ,char*,char const*) ;
 int T_EXPECT_NOTNULL (char const*,char*,char const*,char const*) ;
 int T_QUIET ;
 int strlen (char const*) ;

__attribute__((used)) static void
expect_special_port_description(const char *(*fn)(mach_port_t),
  mach_port_t port, const char *namestr)
{
 const char *desc = fn(port);
 T_EXPECT_NOTNULL(desc, "%s is %s", namestr, desc);
 if (desc) {
  T_QUIET; T_EXPECT_GT(strlen(desc), strlen(""),
    "%s's description string is not empty", namestr);
 }
}
