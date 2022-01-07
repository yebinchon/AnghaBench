
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_policy_conf {char* mpc_name; char* mpc_fullname; } ;


 int printf (char*,char*,char*) ;

__attribute__((used)) static void
hook_policy_init(struct mac_policy_conf *mpc)
{
 printf("Policy '%s' = '%s' ready\n", mpc->mpc_name, mpc->mpc_fullname);
}
