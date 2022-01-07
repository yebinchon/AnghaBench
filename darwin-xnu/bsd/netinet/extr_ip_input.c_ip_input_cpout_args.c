
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_in_args {int fwai_divert_rule; int fwai_pf_rule; int fwai_ipfw_rule; int fwai_next_hop; } ;
struct ip_fw_args {int fwa_divert_rule; int fwa_pf_rule; int fwa_ipfw_rule; int fwa_next_hop; } ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int bzero (struct ip_fw_args*,int) ;

__attribute__((used)) static void
ip_input_cpout_args(struct ip_fw_in_args *args, struct ip_fw_args *args1,
    boolean_t *done_init)
{
 if (*done_init == FALSE) {
  bzero(args1, sizeof(struct ip_fw_args));
  *done_init = TRUE;
 }
 args1->fwa_next_hop = args->fwai_next_hop;
 args1->fwa_ipfw_rule = args->fwai_ipfw_rule;
 args1->fwa_pf_rule = args->fwai_pf_rule;
 args1->fwa_divert_rule = args->fwai_divert_rule;
}
