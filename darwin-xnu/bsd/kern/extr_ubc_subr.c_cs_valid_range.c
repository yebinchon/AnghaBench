
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static boolean_t
cs_valid_range(
 const void *start,
 const void *end,
 const void *lower_bound,
 const void *upper_bound)
{
 if (upper_bound < lower_bound ||
     end < start) {
  return FALSE;
 }

 if (start < lower_bound ||
     end > upper_bound) {
  return FALSE;
 }

 return TRUE;
}
