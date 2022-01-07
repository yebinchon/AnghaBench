
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icmp6errstat {int icp6errs_unknown; int icp6errs_redirect; int icp6errs_paramprob_option; int icp6errs_paramprob_nextheader; int icp6errs_paramprob_header; int icp6errs_time_exceed_reassembly; int icp6errs_time_exceed_transit; int icp6errs_packet_too_big; int icp6errs_dst_unreach_noport; int icp6errs_dst_unreach_addr; int icp6errs_dst_unreach_beyondscope; int icp6errs_dst_unreach_admin; int icp6errs_dst_unreach_noroute; } ;
__attribute__((used)) static void
icmp6_errcount(struct icmp6errstat *stat, int type, int code)
{
 switch (type) {
 case 142:
  switch (code) {
  case 137:
   stat->icp6errs_dst_unreach_noroute++;
   return;
  case 140:
   stat->icp6errs_dst_unreach_admin++;
   return;
  case 139:
   stat->icp6errs_dst_unreach_beyondscope++;
   return;
  case 141:
   stat->icp6errs_dst_unreach_addr++;
   return;
  case 138:
   stat->icp6errs_dst_unreach_noport++;
   return;
  }
  break;
 case 136:
  stat->icp6errs_packet_too_big++;
  return;
 case 131:
  switch (code) {
  case 129:
   stat->icp6errs_time_exceed_transit++;
   return;
  case 130:
   stat->icp6errs_time_exceed_reassembly++;
   return;
  }
  break;
 case 132:
  switch (code) {
  case 135:
   stat->icp6errs_paramprob_header++;
   return;
  case 134:
   stat->icp6errs_paramprob_nextheader++;
   return;
  case 133:
   stat->icp6errs_paramprob_option++;
   return;
  }
  break;
 case 128:
  stat->icp6errs_redirect++;
  return;
 }
 stat->icp6errs_unknown++;
}
