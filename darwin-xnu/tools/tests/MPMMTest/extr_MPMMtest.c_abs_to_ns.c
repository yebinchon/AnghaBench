
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int numer; int denom; } ;


 TYPE_1__ g_timebase ;

__attribute__((used)) static inline uint64_t abs_to_ns(uint64_t abs)
{
 return abs * g_timebase.numer / g_timebase.denom;
}
