
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ip_old_fw {int dummy; } ;
struct ip_fw_compat_64 {int dummy; } ;
struct ip_fw_compat_32 {int dummy; } ;
struct ip_fw_64 {int dummy; } ;
struct ip_fw_32 {int dummy; } ;
struct ip_fw {int dummy; } ;





 int ipfw_version_latest_to_one_32 (struct ip_fw_32*,struct ip_fw_compat_32*) ;
 int ipfw_version_latest_to_one_64 (struct ip_fw_64*,struct ip_fw_compat_64*) ;
 int ipfw_version_latest_to_zero (struct ip_fw*,struct ip_old_fw*,int) ;

void
ipfw_convert_from_latest(struct ip_fw *curr_rule, void *old_rule, u_int32_t api_version, int is64user)
{
 switch (api_version) {
  case 129:
  {
   struct ip_old_fw *rule_vers0 = old_rule;

   ipfw_version_latest_to_zero(curr_rule, rule_vers0, is64user);
   break;
  }
  case 128:
  {
   if ( is64user )
    ipfw_version_latest_to_one_64((struct ip_fw_64*)curr_rule, (struct ip_fw_compat_64 *)old_rule);
   else
    ipfw_version_latest_to_one_32((struct ip_fw_32*)curr_rule, (struct ip_fw_compat_32 *)old_rule);

   break;
  }
  case 130:

   break;

  default:

   break;
 }
}
