
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int THROUGHPUT_QOS_TIER_UNSPECIFIED ;

uint32_t
qos_throughput_policy_package(uint32_t qv) {
 return (qv == THROUGHPUT_QOS_TIER_UNSPECIFIED) ? THROUGHPUT_QOS_TIER_UNSPECIFIED : ((0xFE << 16) | qv);
}
