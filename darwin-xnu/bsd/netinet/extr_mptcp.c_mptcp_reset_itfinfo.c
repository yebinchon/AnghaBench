
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_itf_info {scalar_t__ has_nat64_conn; scalar_t__ has_v6_conn; scalar_t__ has_v4_conn; scalar_t__ ifindex; } ;



__attribute__((used)) static void
mptcp_reset_itfinfo(struct mpt_itf_info *info)
{
 info->ifindex = 0;
 info->has_v4_conn = 0;
 info->has_v6_conn = 0;
 info->has_nat64_conn = 0;
}
