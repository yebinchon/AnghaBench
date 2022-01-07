
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct sockopt {int sopt_name; size_t sopt_valsize; int sopt_val; int sopt_p; } ;
struct ip_fw_64 {scalar_t__ version; } ;
struct ip_fw_32 {int dummy; } ;


 int EINVAL ;
 int IP_FW_ADD ;
 int IP_FW_DEL ;
 int IP_FW_FLUSH ;
 int IP_FW_GET ;
 int IP_FW_RESETLOG ;
 scalar_t__ IP_FW_VERSION_0 ;
 scalar_t__ IP_FW_VERSION_NONE ;
 int IP_FW_ZERO ;
 int IP_OLD_FW_ADD ;
 int IP_OLD_FW_DEL ;
 int IP_OLD_FW_FLUSH ;
 int IP_OLD_FW_GET ;
 int IP_OLD_FW_RESETLOG ;
 int IP_OLD_FW_ZERO ;
 scalar_t__ proc_is64bit (int ) ;
 int sooptcopyin (struct sockopt*,struct ip_fw_64*,size_t,size_t) ;

int
ipfw_get_command_and_version(struct sockopt *sopt, int *command, u_int32_t *api_version)
{
 int cmd;
 int err = 0;
 u_int32_t vers = IP_FW_VERSION_NONE;


 if (sopt->sopt_name == IP_OLD_FW_GET) {
  vers = IP_FW_VERSION_0;
  cmd = IP_FW_GET;
 }
 else if (sopt->sopt_name == IP_OLD_FW_FLUSH) {
  vers = IP_FW_VERSION_0;
  cmd = IP_FW_FLUSH;
 }
 else if (sopt->sopt_name == IP_OLD_FW_ZERO) {
  vers = IP_FW_VERSION_0;
  cmd = IP_FW_ZERO;
 }
 else if (sopt->sopt_name == IP_OLD_FW_ADD) {
  vers = IP_FW_VERSION_0;
  cmd = IP_FW_ADD;
 }
 else if (sopt->sopt_name == IP_OLD_FW_DEL) {
  vers = IP_FW_VERSION_0;
  cmd = IP_FW_DEL;
 }
 else if (sopt->sopt_name == IP_OLD_FW_RESETLOG) {
  vers = IP_FW_VERSION_0;
  cmd = IP_FW_RESETLOG;
 }
 else {
  cmd = sopt->sopt_name;
 }

 if (vers == IP_FW_VERSION_NONE) {



  struct ip_fw_64 rule;
                size_t copyinsize;

                if (proc_is64bit(sopt->sopt_p))
                        copyinsize = sizeof(struct ip_fw_64);
                else
                        copyinsize = sizeof(struct ip_fw_32);

  if (!sopt->sopt_val || sopt->sopt_valsize < copyinsize)
   return EINVAL;
  if ((err = sooptcopyin(sopt, &rule, copyinsize, copyinsize))) {
   return err;
  }

  vers = rule.version;
 }

 if (command) {
  *command = cmd;
 }
 if (api_version) {
  *api_version = vers;
 }

 return err;
}
