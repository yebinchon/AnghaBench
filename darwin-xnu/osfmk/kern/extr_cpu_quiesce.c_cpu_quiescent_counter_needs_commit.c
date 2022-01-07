
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int checkin_mask_t ;


 int CPU_CHECKIN_MASK ;
 int CPU_EXPECTED_MASK ;

__attribute__((used)) static bool
cpu_quiescent_counter_needs_commit(checkin_mask_t state)
{
 return (state & CPU_CHECKIN_MASK) == ((state & CPU_EXPECTED_MASK) >> 1);
}
