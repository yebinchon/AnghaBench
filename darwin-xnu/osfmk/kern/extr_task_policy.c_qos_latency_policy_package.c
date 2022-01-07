
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LATENCY_QOS_TIER_UNSPECIFIED ;

uint32_t
qos_latency_policy_package(uint32_t qv) {
 return (qv == LATENCY_QOS_TIER_UNSPECIFIED) ? LATENCY_QOS_TIER_UNSPECIFIED : ((0xFF << 16) | qv);
}
