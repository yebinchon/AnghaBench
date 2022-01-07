
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ animation_is_active ;
 scalar_t__ ticker_is_active ;

bool menu_animation_is_active(void)
{
   return animation_is_active || ticker_is_active;
}
