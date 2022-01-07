
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ DECREMENTER_MAX ;
 int DECREMENTER_MIN ;

__attribute__((used)) static int
deadline_to_decrementer(uint64_t deadline,
                        uint64_t now)
{
 uint64_t delt;

 if (deadline <= now)
  return DECREMENTER_MIN;
 else {
  delt = deadline - now;

  return (delt >= (DECREMENTER_MAX + 1)) ? DECREMENTER_MAX : ((delt >= (DECREMENTER_MIN + 1)) ? (int)delt : DECREMENTER_MIN);
 }
}
