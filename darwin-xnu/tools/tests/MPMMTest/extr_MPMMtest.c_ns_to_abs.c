
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int denom; int numer; } ;


 TYPE_1__ g_timebase ;

__attribute__((used)) static inline uint64_t ns_to_abs(uint64_t ns)
{
 return ns * g_timebase.denom / g_timebase.numer;
}
