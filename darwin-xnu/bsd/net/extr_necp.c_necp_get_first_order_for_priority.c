
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;



__attribute__((used)) static inline u_int32_t
necp_get_first_order_for_priority(u_int32_t priority)
{
 return (((priority - 1) * 1000) + 1);
}
