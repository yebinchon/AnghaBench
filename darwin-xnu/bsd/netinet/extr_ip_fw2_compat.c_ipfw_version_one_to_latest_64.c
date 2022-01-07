
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int dummy; } ;
struct ip_fw_compat_64 {int dummy; } ;
struct ip_fw {int dummy; } ;


 int ipfw_version_one_to_version_two_64 (struct sockopt*,struct ip_fw*,struct ip_fw_compat_64*) ;

__attribute__((used)) static int
ipfw_version_one_to_latest_64(struct sockopt *sopt, struct ip_fw *curr_rule, struct ip_fw_compat_64 *rule_vers1)
{
 int err;






 err = ipfw_version_one_to_version_two_64(sopt, curr_rule, rule_vers1);

 return err;
}
