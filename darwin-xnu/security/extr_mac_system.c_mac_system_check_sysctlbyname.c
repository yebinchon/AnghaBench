
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int u_int ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,char const*,int*,int ,int ,size_t,int ,size_t) ;
 int mac_system_enforce ;
 int system_check_sysctlbyname ;

int
mac_system_check_sysctlbyname(kauth_cred_t cred, const char *namestring, int *name,
         u_int namelen, user_addr_t oldctl, size_t oldlen,
         user_addr_t newctl, size_t newlen)
{
 int error;







 MAC_CHECK(system_check_sysctlbyname, cred, namestring,
     name, namelen, oldctl, oldlen, newctl, newlen);

 return (error);
}
