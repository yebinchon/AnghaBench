
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_policy_conf {char* mpc_name; } ;


 int printf (char*,char*) ;

__attribute__((used)) static void
hook_policy_initbsd(struct mac_policy_conf *mpc)
{

 printf("hook_policy_initbsd: %s\n", mpc->mpc_name);
}
