
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 scalar_t__ memorystatus_available_pages ;
 scalar_t__ memorystatus_available_pages_pressure ;

__attribute__((used)) static boolean_t
memorystatus_avail_pages_below_pressure(void)
{
 return FALSE;

}
