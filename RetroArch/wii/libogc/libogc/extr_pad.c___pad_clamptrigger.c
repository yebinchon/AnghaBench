
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__* __pad_clampregion ;

__attribute__((used)) static void __pad_clamptrigger(u8 *trigger)
{
 u8 min, max;

 min = __pad_clampregion[0];
 max = __pad_clampregion[1];
 if(min>*trigger) *trigger = 0;
 else if(max<*trigger) *trigger = (max - min);
 else *trigger -= min;
}
