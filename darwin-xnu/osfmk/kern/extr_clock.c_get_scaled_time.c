
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct bintime {int dummy; } ;
struct TYPE_2__ {int s_adj_nsx; int s_scale_ns; int tick_scale_x; scalar_t__ offset_count; } ;


 TYPE_1__ clock_calend ;
 struct bintime scale_delta (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static struct bintime
get_scaled_time(uint64_t now)
{
 uint64_t delta;





 delta = now - clock_calend.offset_count;

 return scale_delta(delta, clock_calend.tick_scale_x, clock_calend.s_scale_ns, clock_calend.s_adj_nsx);
}
